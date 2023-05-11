#include "spq.h"

#include "ns3/ipv4-header.h"

SPQ::SPQ(){};

Ptr<const Packet> SPQ::Schedule() const{
    Ptr<Packet> p;

    std::vector<TrafficClass*> q_class = Get_QClass();

    for (TrafficClass* tc: q_class){
        if (!tc->IsEmpty()){
            p = tc->Peek();
        }
    }
    return p;
}

void SPQ::setPriority(int index, uint32_t priority){
    std::vector<TrafficClass*> q_class = Get_QClass();
    q_class[index]->set_priority_level(priority);

}

Ptr<const Packet> SPQ::DoPeek() const{
    Ptr<Packet> p;
    std::vector<TrafficClass*> q_class = Get_QClass();

    for (TrafficClass* tc: q_class){
        if (!tc->IsEmpty()){
             return tc->Peek();
        }
    }
    return 0;
}


// int main() {
//     SPQ testspq;

//     std::cout << "q_class size before: " << testspq.Get_QClass().size() << std::endl;
    
//     TrafficClass tc1;
//     TrafficClass tc2;

//     testspq.AddTrafficClass(tc1);
//     testspq.AddTrafficClass(tc2);

//     std::cout << "q_class size after: " << testspq.Get_QClass().size() << std::endl;

//     Filter f1;
//     Filter f2;

//     FilterSourceIPAddress filterSourceIP1(Ipv4Address("10.0.1.1"));
//     FilterDestinationIPAddress filterDestinationIPAddress1(Ipv4Address("10.0.2.2"));
//     FilterDestinationPort filterDestinationPort1(1000);

//     FilterSourceIPAddress filterSourceIP2(Ipv4Address("10.0.1.1"));
//     FilterDestinationIPAddress filterDestinationIPAddress2(Ipv4Address("10.0.2.2"));
//     FilterDestinationPort filterDestinationPort2(2000);

//     testspq.Get_QClass()[0]->AddFilter(f1);
//     testspq.Get_QClass()[1]->AddFilter(f2);

//     testspq.Get_QClass()[1]->filters[0]->AddFilterElement(&filterSourceIP1);
//     testspq.Get_QClass()[1]->filters[0]->AddFilterElement(&filterDestinationIPAddress1);
//     testspq.Get_QClass()[1]->filters[0]->AddFilterElement(&filterDestinationPort1);

//     testspq.Get_QClass()[0]->filters[0]->AddFilterElement(&filterSourceIP2);
//     testspq.Get_QClass()[0]->filters[0]->AddFilterElement(&filterDestinationIPAddress2);
//     testspq.Get_QClass()[0]->filters[0]->AddFilterElement(&filterDestinationPort2);


//     // testdf.InitializeTrafficClass(Ipv4Address("10.0.1.1"), Ipv4Address("10.0.2.2"), 1000);
//     // testdf.InitializeTrafficClass(Ipv4Address("10.0.1.1"), Ipv4Address("10.0.2.2"), 2000);
    
    

//     std::cout << "TC1 size: " << testspq.Get_QClass()[0]->GetNumFilters() << std::endl;
//     std::cout << "TC2 size: " << testspq.Get_QClass()[1]->GetNumFilters() << std::endl;

//     // std::cout <<"tc1: " <<  testdf.Get_QClass()[0] << std::endl;

//     std::cout << "TC1 Filter elements: " <<testspq.Get_QClass()[0]->filters[0]->elements.size() << std::endl;
//     std::cout << "TC2 Filter elements: " <<testspq.Get_QClass()[1]->filters[0]->elements.size() << std::endl;
    
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

//     testspq.Enqueue(packet);

    
//     Ipv4Header ipv4HeaderTest;

//     Ptr<const Packet> ptest = testspq.Peek();

//     ptest->PeekHeader(ipv4HeaderTest); //"10.0.0.1"
//     std::cout << "Peeked IP: " << ipv4HeaderTest << std::endl;

//     ptest = testspq.Dequeue();

//     // for (int i = 0; i < 100; i++){
//     //     Ptr<Packet> packeLoop = Create<Packet>();

//     //     Ipv4Header ipv4Header;
//     //     ipv4Header.SetSource(Ipv4Address("10.0.1.1")); //"10.0.0.1"
//     //     ipv4Header.SetDestination(Ipv4Address("10.0.2.2")); //"10.2.2.0"
//     //     ipv4Header.SetProtocol(6); //6
        
//     //     UdpHeader udpHeader;
//     //     udpHeader.SetSourcePort(500); //500
//     //     udpHeader.SetDestinationPort(1000); //1000

//     //     TcpHeader tcpHeader;
//     //     tcpHeader.SetSourcePort(500);
//     //     tcpHeader.SetDestinationPort(1000);
        
//     //     // packet->AddHeader(udpHeader);
//     //     packeLoop->AddHeader(tcpHeader);
//     //     packeLoop->AddHeader(ipv4Header);

//     //     testspq.Enqueue(packeLoop);

//     // }

//     // for (int i = 0; i < 100; i++){
//     //     testspq.Dequeue();
//     // }

// }






