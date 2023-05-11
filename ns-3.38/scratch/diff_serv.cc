#include "diff_serv.h"


// Base Class for SQP and DRR
DiffServ::DiffServ(){
    numQueues = 0;
}

uint32_t DiffServ::Classify(Ptr<Packet> packet){
    
    int counter = 0;
    for (TrafficClass* tc: q_class){
        std::cout << "Matching with TC: " << counter << std::endl;
        if (tc->Match(packet)){
            return counter;
        }
        counter++;
    }

    std::cout << "Didn't match, returning lowest priority queue" << std::endl;
    return numQueues;
}

Ptr<const Packet> DiffServ::Schedule() const {
    return nullptr;
}

bool DiffServ::Enqueue(Ptr<Packet> packet){
    return DoEnqueue(packet);
}

Ptr<Packet> DiffServ::Dequeue(){
    return DoDequeue();
}

bool DiffServ::DoEnqueue(Ptr<Packet> packet){
    uint32_t classification = Classify(packet);
    std::cout << "Classified packet to: " << classification << std::endl;

    q_class[classification]->Enqueue(packet);

    return false;
}

Ptr<Packet> DiffServ::DoDequeue(){
    Ptr<const Packet> dqPacket = Schedule();
    uint32_t classification = Classify(dqPacket->Copy());

    Ptr<Packet> returnPacket = q_class[classification]->Dequeue();

    return returnPacket;

    // return dqPacket;

}

Ptr<Packet> DiffServ::Remove(){
    return DoRemove();

}

Ptr<Packet> DiffServ::DoRemove() {
    // will be overridden
    return 0;
}

Ptr<const Packet> DiffServ::Peek() const {
    return DoPeek();
    // return DoPeek();
}

Ptr<const Packet> DiffServ::DoPeek() const {
    // will be overridden
    return Schedule();
    // return nullptr;
}

void DiffServ::setNumQueues(int num){
    this->numQueues = num;
}

void DiffServ::AddTrafficClass(TrafficClass tc){
   this->q_class.push_back(&tc);
}

// 
void DiffServ::InitializeTrafficClass(Ipv4Address srcIP, Ipv4Address destIP, int destPort){
    Filter spqFilter;
    TrafficClass spqTC;

    FilterSourceIPAddress filterSourceIP(srcIP);
    // FilterSourceMask filterSourceMask(Ipv4Address("10.0.0.1"), Ipv4Mask("255.255.255.0"));
    // FilterSourcePort filterSourcePort(500);
    FilterDestinationIPAddress filterDestinationIPAddress(destIP);
    // FilterDestinationMask filterDestinationMask(Ipv4Address("10.2.2.1"), Ipv4Mask("255.255.255.0"));
    FilterDestinationPort filterDestinationPort(destPort);
    // FilterProtocol filterProtocol(6);

    spqFilter.AddFilterElement(&filterSourceIP);
    // spqTC.AddFilterElement(&filterSourceMask);
    // spqTC.AddFilterElement(&filterSourcePort);
    spqFilter.AddFilterElement(&filterDestinationIPAddress);
    // spqTC.AddFilterElement(&filterDestinationMask);
    spqFilter.AddFilterElement(&filterDestinationPort);

    spqTC.AddFilter(spqFilter);

    AddTrafficClass(spqTC);

    // q_class.AddT

    

    numQueues++;

    std::cout << "Traffic Class added with filters " << srcIP << " "<< destIP << " "<< destPort << " numQueues now "<< numQueues<< std::endl;
}

std::vector<TrafficClass*> DiffServ::Get_QClass() const {
    return q_class;
}


// int main() {
//     DiffServ testdf;

//     std::cout << "q_class size before: " << testdf.Get_QClass().size() << std::endl;
    
//     TrafficClass tc1;
//     TrafficClass tc2;

//     testdf.AddTrafficClass(tc1);
//     testdf.AddTrafficClass(tc2);

//     std::cout << "q_class size after: " << testdf.Get_QClass().size() << std::endl;

//     Filter f1;
//     Filter f2;

//     FilterSourceIPAddress filterSourceIP1(Ipv4Address("10.0.1.1"));
//     FilterDestinationIPAddress filterDestinationIPAddress1(Ipv4Address("10.0.2.2"));
//     FilterDestinationPort filterDestinationPort1(1000);

//     FilterSourceIPAddress filterSourceIP2(Ipv4Address("10.0.1.1"));
//     FilterDestinationIPAddress filterDestinationIPAddress2(Ipv4Address("10.0.2.2"));
//     FilterDestinationPort filterDestinationPort2(2000);

//     // f1.AddFilterElement(&filterSourceIP1);
//     // f1.AddFilterElement(&filterDestinationIPAddress1);
//     // f1.AddFilterElement(&filterDestinationPort1);

//     // f2.AddFilterElement(&filterSourceIP2);
//     // f2.AddFilterElement(&filterDestinationIPAddress2);
//     // f2.AddFilterElement(&filterDestinationPort2);

//     testdf.Get_QClass()[0]->AddFilter(f1);
//     testdf.Get_QClass()[1]->AddFilter(f2);

//     testdf.Get_QClass()[1]->filters[0]->AddFilterElement(&filterSourceIP1);
//     testdf.Get_QClass()[1]->filters[0]->AddFilterElement(&filterDestinationIPAddress1);
//     testdf.Get_QClass()[1]->filters[0]->AddFilterElement(&filterDestinationPort1);

//     testdf.Get_QClass()[0]->filters[0]->AddFilterElement(&filterSourceIP2);
//     testdf.Get_QClass()[0]->filters[0]->AddFilterElement(&filterDestinationIPAddress2);
//     testdf.Get_QClass()[0]->filters[0]->AddFilterElement(&filterDestinationPort2);


//     // testdf.InitializeTrafficClass(Ipv4Address("10.0.1.1"), Ipv4Address("10.0.2.2"), 1000);
//     // testdf.InitializeTrafficClass(Ipv4Address("10.0.1.1"), Ipv4Address("10.0.2.2"), 2000);

//     std::cout << "TC1 size: " << testdf.Get_QClass()[0]->GetNumFilters() << std::endl;
//     std::cout << "TC2 size: " << testdf.Get_QClass()[1]->GetNumFilters() << std::endl;

//     // std::cout <<"tc1: " <<  testdf.Get_QClass()[0] << std::endl;

//     std::cout << "TC1 Filter elements: " <<testdf.Get_QClass()[0]->filters[0]->elements.size() << std::endl;
//     std::cout << "TC2 Filter elements: " <<testdf.Get_QClass()[1]->filters[0]->elements.size() << std::endl;
    
//     Ptr<Packet> packet = Create<Packet>();

//     Ipv4Header ipv4Header;
//     ipv4Header.SetSource(Ipv4Address("10.0.1.1")); //"10.0.0.1"
//     ipv4Header.SetDestination(Ipv4Address("10.0.2.2")); //"10.2.2.0"
//     ipv4Header.SetProtocol(6); //6
    
//     UdpHeader udpHeader;
//     udpHeader.SetSourcePort(500); //500
//     udpHeader.SetDestinationPort(1000); //1000

//     TcpHeader tcpHeader;
//     tcpHeader.SetSourcePort(500);
//     tcpHeader.SetDestinationPort(1000);
    
//     // packet->AddHeader(udpHeader);
//     packet->AddHeader(tcpHeader);
//     packet->AddHeader(ipv4Header);

//     testdf.Enqueue(packet);
// }

