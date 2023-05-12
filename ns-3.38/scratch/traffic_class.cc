#include "traffic_class.h"


TrafficClass::TrafficClass(){}

bool TrafficClass::Enqueue(Ptr<Packet> packet){
    std::cout << "Queue size before EQ: " <<m_queue.size() << std::endl;
    
    m_queue.push(packet);
    bytes+=packet->GetSize();

    std::cout << "Queue size after EQ: " <<m_queue.size() << std::endl;

    return true;
}

Ptr<Packet> TrafficClass::Dequeue() {
    if (m_queue.empty()){
        std::cout << "Empty Queue" << std::endl;
        return 0;
    }

     std::cout << "Queue size before DQ: " <<m_queue.size() << std::endl;

    Ptr<Packet> popped =  m_queue.front();
    m_queue.pop();
    bytes -= popped->GetSize();

    std::cout << "Queue size after DQ: " <<m_queue.size() << std::endl;

    return popped;
}

bool TrafficClass::Match(Ptr<Packet> packet){
    // std::cout << "Traffic Class has " << GetNumFilters() << " filters" << std::endl;
    // printf("Traffic Class has %d filters", GetNumFilters());

    for (Filter* filter: filters){
        // std::cout << "In Filters loop" << std::endl;
        // Ptr<Packet> copy = packet->Copy();
        if (filter->Match(packet)){
            std::cout << "Filter " << filter << " Passed" << std::endl;
            return true;
        }
    }

    std::cout << "Did not match any Filter in Traffic Class" << std::endl;
    
    return false;
}

Ptr<Packet> TrafficClass::Peek() const{
    return m_queue.front();
}

std::queue<Ptr<Packet>> TrafficClass::GetQueue(){
    return m_queue;
}

size_t TrafficClass::GetNumFilters(){
    return filters.size();
}

void TrafficClass::AddFilter(Filter filter){
    filters.push_back(&filter);
}

bool TrafficClass::IsEmpty(){
    return m_queue.empty();
}

void TrafficClass::set_bytes(uint32_t num_bytes){
    bytes = num_bytes;
}

uint32_t TrafficClass::get_bytes(){
    return bytes;
}

void TrafficClass::set_packets(uint32_t num_packets){
    this->packets = num_packets;
}

uint32_t TrafficClass::get_packets(){
    return packets;
}

void TrafficClass::set_maxPackets(uint32_t num_max){
    maxPackets = num_max;
}

uint32_t TrafficClass::get_maxPackets(){
    return maxPackets;
}

void TrafficClass::set_maxBytes(uint32_t num_bytes){
    maxBytes = num_bytes;
}

uint32_t TrafficClass::get_maxBytes(){
    return maxBytes;
}

void TrafficClass::set_weight(uint32_t w){
    weight = w;
}

uint32_t TrafficClass::get_weight(){
    return weight;
}

void TrafficClass::set_priority_level(uint32_t pl){
    priority_level = pl;
}

uint32_t TrafficClass::get_priority_level(){
    return priority_level;
}


// int main() {

//     Ptr<Packet> packet = Create<Packet>();

//     Ipv4Header ipv4Header;
//     ipv4Header.SetSource(Ipv4Address("10.0.0.1")); //"10.0.0.1"
//     ipv4Header.SetDestination(Ipv4Address("10.2.2.0")); //"10.2.2.0"
//     ipv4Header.SetProtocol(6); //6
    
//     UdpHeader udpHeader;
//     udpHeader.SetSourcePort(500); //500
//     udpHeader.SetDestinationPort(100); //100

//     TcpHeader tcpHeader;
//     tcpHeader.SetSourcePort(500);
//     tcpHeader.SetDestinationPort(100);
    
//     // packet->AddHeader(udpHeader);
//     packet->AddHeader(tcpHeader);
//     packet->AddHeader(ipv4Header);

//     FilterSourceIPAddress filterSourceIP(Ipv4Address("10.0.0.1"));
//     FilterSourceMask filterSourceMask(Ipv4Address("10.0.0.1"), Ipv4Mask("255.255.255.0"));
//     FilterSourcePort filterSourcePort(500);
//     FilterDestinationIPAddress filterDestinationIPAddress(Ipv4Address("10.2.2.0"));
//     FilterDestinationMask filterDestinationMask(Ipv4Address("10.0.0.1"), Ipv4Mask("255.255.255.0"));
//     FilterDestinationPort filterDestinationPort(100);
//     FilterProtocol filterProtocol(6);


//     Filter testFilter;

//     testFilter.AddFilterElement(&filterSourceIP);
//     testFilter.AddFilterElement(&filterSourceMask);
//     testFilter.AddFilterElement(&filterSourcePort);
//     testFilter.AddFilterElement(&filterDestinationIPAddress);
//     testFilter.AddFilterElement(&filterDestinationMask);
//     testFilter.AddFilterElement(&filterDestinationPort);
//     testFilter.AddFilterElement(&filterProtocol);

//     TrafficClass testTC;
//     testTC.filters.push_back(&testFilter);

//     testTC.Dequeue();
//     testTC.Enqueue(packet);
//     testTC.Dequeue();

//     testTC.Match(packet);
// }