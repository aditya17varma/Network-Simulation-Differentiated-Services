#include "drr.h"

DRR::DRR(){};

Ptr<const Packet> DRR::Schedule() const {
    std::cout << "In schedule" << std::endl;

    // Check active list not empty
    if (!activeList.empty()){
        // Get the traffic class index from the front of the active list
        uint32_t next_queue_index = activeList.front();
        // Get the current deficit for that TC from the deficit vector
        uint32_t deficit_for_index = deficitVector[next_queue_index] + Get_QClass()[next_queue_index]->get_weight();

        // if deficit > 0 and TC not empty, return peek from TC queue
        if (deficit_for_index > 0 && !Get_QClass()[next_queue_index]->IsEmpty()){
            uint32_t packet_size = Get_QClass()[next_queue_index]->Peek()->GetSize();
            // if packet size <= deficit -> send
            if (packet_size <= deficit_for_index) {
                return Get_QClass()[next_queue_index]->Peek();
            }
        }
        // if queue empty set deficit to 0
        if (Get_QClass()[next_queue_index]->IsEmpty()){
            std::cout << "queue empty setting deficit to 0 in schedule" << std::endl;
            deficitVector[next_queue_index] = 0;
        }
    }
    else{
        std::cout << "Schedule found active list empty!" << std::endl;
    }
    return nullptr;
}

uint32_t DRR::GetDeficit(uint32_t index){
    return deficitVector[index];
}

void DRR::SetDeficit(uint32_t index, uint32_t deficit){
    deficitVector[index] = deficit;
    std::cout << "TC" << index << " deficit set to: " << deficit << std::endl;
}

std::vector<uint32_t> DRR::GetActiveList(){
    return activeList;
}

void DRR::InsertActiveList(uint32_t index){
    activeList.push_back(index);
}

void DRR::InitializeDeficit(uint32_t deficit){
    deficitVector.push_back(deficit);
}

Ptr<const Packet> DRR::DoPeek() const {
    Ptr<Packet> p;
    std::vector<TrafficClass*> q_class = Get_QClass();

    for (TrafficClass* tc: q_class){
        if (!tc->IsEmpty()){
             return tc->Peek();
        }
    }
    return 0;

}

bool DRR::DoEnqueue(Ptr<Packet> packet) {
    uint32_t classification = Classify(packet);
    std::cout << "Classified packet to: " << classification << std::endl;

    if (std::count(activeList.begin(), activeList.end(), classification) == 0){
        std::cout << "Active List did not contain classification, adding" << std::endl;
        activeList.push_back(classification);
        deficitVector[classification] = 0;
    }

    Get_QClass()[classification]->Enqueue(packet);

    return false;

}

Ptr<Packet> DRR::DoDequeue() {
    Ptr<const Packet> dqPacket = Schedule();
    uint32_t classification = Classify(dqPacket->Copy());

    std::cout << "DQ: classification: " << classification << std::endl;

    Ptr<Packet> returnPacket;

    if (!activeList.empty()){
        // Get the traffic class index from the fron of the active list and remove
        // uint32_t next_queue_index = activeList.front();
        activeList.erase(activeList.begin());

        std::cout << "next queue index: " << classification << std::endl;

        // Get the current deficit for that TC from the deficit vector
        uint32_t deficit_for_index = deficitVector[classification];

        std::cout << "deficit: " << deficit_for_index << std::endl;

        // add the weight of the TC as quantum to the current deficit
        deficitVector[classification] = deficitVector[classification] + Get_QClass()[classification]->get_weight();

        // updated deficit after adding quantum
        deficit_for_index = deficitVector[classification];

        std::cout << "deficit after quantum: " << deficit_for_index << std::endl;

        // while deficit > 0 and TC not empty
        while(deficit_for_index > 0 && !Get_QClass()[classification]->IsEmpty()){
            //Get packet size
            std::cout << "in while loop" << std::endl;
            uint32_t packet_size = Get_QClass()[classification]->Peek()->GetSize();
            // if packet size <= deficit -> send
            std::cout << "packet size: " << packet_size << std::endl;
            if (packet_size <= deficit_for_index) {
                deficit_for_index -= packet_size;
                deficitVector[classification] = deficit_for_index;
                std::cout << "deficit after -packet: " << deficit_for_index << std::endl;
                returnPacket = Get_QClass()[classification]->Dequeue();
                break;
            }
            else {
                break;
            }
        }
        // if queue empty set deficit to 0
        if (Get_QClass()[classification]->IsEmpty()){
            std::cout << "queue empty setting deficit to 0" << std::endl;
            deficitVector[classification] = 0;
        }
        // else add index back to active list
        else {
            activeList.push_back(classification);
            std::cout << "adding queue back to active list" << std::endl;
        }

        std::cout << "\n" << std::endl;
        return returnPacket;


    }
    else{
        std::cout << "active list empty!" << std::endl;
    }
    return nullptr;

}

int main() {
    DRR testdrr;

    testdrr.quantum = 100;

    std::cout << "DRR quantum: " << testdrr.quantum << std::endl;
    std::cout << "q_class size before: " << testdrr.Get_QClass().size() << std::endl;
    
    TrafficClass tc1;
    TrafficClass tc2;

    tc1.set_weight(50);
    tc2.set_weight(100);

    testdrr.AddTrafficClass(tc1);
    testdrr.AddTrafficClass(tc2);

    testdrr.InitializeDeficit(0);

    testdrr.InitializeDeficit(0);

    // testdrr.SetDeficit(1, 600);

    std::cout << "deficit 0: " << testdrr.GetDeficit(0) << std::endl;
    std::cout << "deficit 1: " << testdrr.GetDeficit(1) << std::endl;


    std::cout << "q_class size after: " << testdrr.Get_QClass().size() << std::endl;

    Filter f1;
    Filter f2;

    FilterSourceIPAddress filterSourceIP1(Ipv4Address("10.0.1.1"));
    FilterDestinationIPAddress filterDestinationIPAddress1(Ipv4Address("10.0.2.2"));
    FilterDestinationPort filterDestinationPort1(1000);

    FilterSourceIPAddress filterSourceIP2(Ipv4Address("10.0.1.1"));
    FilterDestinationIPAddress filterDestinationIPAddress2(Ipv4Address("10.0.2.2"));
    FilterDestinationPort filterDestinationPort2(2000);

    testdrr.Get_QClass()[0]->AddFilter(f1);
    testdrr.Get_QClass()[1]->AddFilter(f2);

    testdrr.Get_QClass()[1]->filters[0]->AddFilterElement(&filterSourceIP1);
    testdrr.Get_QClass()[1]->filters[0]->AddFilterElement(&filterDestinationIPAddress1);
    testdrr.Get_QClass()[1]->filters[0]->AddFilterElement(&filterDestinationPort1);

    testdrr.Get_QClass()[0]->filters[0]->AddFilterElement(&filterSourceIP2);
    testdrr.Get_QClass()[0]->filters[0]->AddFilterElement(&filterDestinationIPAddress2);
    testdrr.Get_QClass()[0]->filters[0]->AddFilterElement(&filterDestinationPort2);
    

    // std::cout << "TC1 size: " << testdrr.Get_QClass()[0]->GetNumFilters() << std::endl;
    // std::cout << "TC2 size: " << testdrr.Get_QClass()[1]->GetNumFilters() << std::endl;

    // std::cout <<"tc1: " <<  testdf.Get_QClass()[0] << std::endl;

    // std::cout << "TC1 Filter elements: " <<testdrr.Get_QClass()[0]->filters[0]->elements.size() << std::endl;
    // std::cout << "TC2 Filter elements: " <<testdrr.Get_QClass()[1]->filters[0]->elements.size() << std::endl;
    
    Ptr<Packet> packet = Create<Packet>();

    Ipv4Header ipv4Header;
    ipv4Header.SetSource(Ipv4Address("10.0.1.1")); //"10.0.0.1"
    ipv4Header.SetDestination(Ipv4Address("10.0.2.2")); //"10.2.2.0"
    ipv4Header.SetProtocol(6); //6
    
    UdpHeader udpHeader;
    udpHeader.SetSourcePort(500); //500
    udpHeader.SetDestinationPort(1000); //1000

    TcpHeader tcpHeader;
    tcpHeader.SetSourcePort(500);
    tcpHeader.SetDestinationPort(1000);
    
    // packet->AddHeader(udpHeader);
    packet->AddHeader(tcpHeader);
    packet->AddHeader(ipv4Header);

    // testdrr.Enqueue(packet);

    
    // Ipv4Header ipv4HeaderTest;

    // Ptr<const Packet> ptest = testdrr.Peek();

    // ptest->PeekHeader(ipv4HeaderTest); //"10.0.0.1"
    // std::cout << "Peeked IP: " << ipv4HeaderTest.GetSource() << std::endl;

    // ptest = testdrr.Dequeue();

    for (int i = 0; i < 4; i++){
        Ptr<Packet> packeLoop = Create<Packet>();

        Ipv4Header ipv4Header;
        ipv4Header.SetSource(Ipv4Address("10.0.1.1")); //"10.0.0.1"
        ipv4Header.SetDestination(Ipv4Address("10.0.2.2")); //"10.2.2.0"
        ipv4Header.SetProtocol(6); //6
        
        UdpHeader udpHeader;
        udpHeader.SetSourcePort(500); //500
        udpHeader.SetDestinationPort(1000); //1000

        TcpHeader tcpHeader;
        tcpHeader.SetSourcePort(500);
        tcpHeader.SetDestinationPort(1000);
        
        // packet->AddHeader(udpHeader);
        packeLoop->AddHeader(tcpHeader);
        packeLoop->AddHeader(ipv4Header);

        testdrr.Enqueue(packeLoop);

    }

    for (int i = 0; i < 4; i++){
        Ptr<Packet> packeLoop = Create<Packet>();

        Ipv4Header ipv4Header;
        ipv4Header.SetSource(Ipv4Address("10.0.1.1")); //"10.0.0.1"
        ipv4Header.SetDestination(Ipv4Address("10.0.2.2")); //"10.2.2.0"
        ipv4Header.SetProtocol(6); //6
        
        UdpHeader udpHeader;
        udpHeader.SetSourcePort(500); //500
        udpHeader.SetDestinationPort(2000); //2000

        TcpHeader tcpHeader;
        tcpHeader.SetSourcePort(500);
        tcpHeader.SetDestinationPort(2000);
        
        // packet->AddHeader(udpHeader);
        packeLoop->AddHeader(tcpHeader);
        packeLoop->AddHeader(ipv4Header);

        testdrr.Enqueue(packeLoop);

    }

    std::cout << "\n\n" << std::endl;

    for (int i = 0; i < 8; i++){
        testdrr.Dequeue();
    }

}





