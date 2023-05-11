#include "filter_elements.h"


using namespace ns3;

//Base class
// class FilterElements{
//     public:
//         virtual ~FilterElements() {}

//         //Virtual mathc method to be overridden by derived class
//         virtual bool Match(const Ptr<Packet>& packet) const = 0;

// };

//Derived Classes

FilterSourceIPAddress::FilterSourceIPAddress(Ipv4Address srcIp)
    : m_srcIp(srcIp) {}

bool 
FilterSourceIPAddress::Match(Ptr<Packet> packet) const{
    //Check source IP address
    std::cout << "Matching Source IP" << std::endl;
    Ptr<Packet> copy = packet->Copy();
    
    // PppHeader ppph;
	// copy->RemoveHeader(ppph);

    Ipv4Header ipv4Header;
    
    copy->PeekHeader(ipv4Header);

    return (ipv4Header.GetSource() == m_srcIp);
}



FilterSourceMask::FilterSourceMask(Ipv4Address srcIp, Ipv4Mask srcMask)
    : m_srcIp(srcIp),
     m_srcMask(srcMask) {}
bool 
FilterSourceMask::Match(Ptr<Packet> packet) const {
    //Check source IP address and Mask
    std::cout << "Matching Source Mask" << std::endl;
    Ptr<Packet> copy = packet->Copy();

    // PppHeader ppph;
	// copy->RemoveHeader(ppph);
    
    Ipv4Header ipv4Header;
    copy->PeekHeader(ipv4Header);
    Ipv4Address packetIp = ipv4Header.GetSource();

    return (m_srcMask.IsMatch(m_srcIp, packetIp));
}

FilterSourcePort::FilterSourcePort(uint32_t srcPort)
    : m_srcPort(srcPort) {}

bool 
FilterSourcePort::Match(Ptr<Packet> packet) const{
    //Check source Port
    std::cout << "Matching Source Port" << std::endl;

    Ptr<Packet> copy = packet->Copy();

    // PppHeader ppph;
	// copy->RemoveHeader(ppph);
    Ipv4Header ipv4Header;
    
    copy->RemoveHeader(ipv4Header);
    uint8_t packet_protocol = ipv4Header.GetProtocol();

    if (packet_protocol == 17) { //UDP
        UdpHeader udpHeader;
        copy->PeekHeader(udpHeader);
        uint16_t src_port = udpHeader.GetSourcePort();

        std::cout << "UDP Packet srcPort: " << src_port << " Matched: " << m_srcPort << std::endl;

        return src_port == m_srcPort;
    }
    else if (packet_protocol == 6){ //TCP
        TcpHeader tcpHeader;
        copy->PeekHeader(tcpHeader);
        uint16_t src_port = tcpHeader.GetSourcePort();

        std::cout << "TCP Packet srcPort: " << src_port << " Matched: " << m_srcPort << std::endl;
        
        return src_port == m_srcPort;
    }
    else {
        std::cout << "Invalid Protocol number in IP Header: " << static_cast<int>(packet_protocol) << std::endl;
        return 0;
    }
    
}


FilterDestinationIPAddress::FilterDestinationIPAddress(Ipv4Address destIp)
    : m_destIp(destIp) {}

bool 
FilterDestinationIPAddress::Match(Ptr<Packet> packet) const{
    //Check source IP address
    std::cout << "Matching Dest IP" << std::endl;

    Ptr<Packet> copy = packet->Copy();
    
    // PppHeader ppph;
	// copy->RemoveHeader(ppph);
    Ipv4Header ipv4Header;
    copy->PeekHeader(ipv4Header);

    return (ipv4Header.GetDestination() == m_destIp);
}

FilterDestinationMask::FilterDestinationMask(Ipv4Address destIp, Ipv4Mask destMask)
    : m_destIp(destIp),
     m_destMask(destMask) {}

bool 
FilterDestinationMask::Match(Ptr<Packet> packet) const {
    //Check dest IP address and Mask
    std::cout << "Matching Dest Mask" << std::endl;

    Ptr<Packet> copy = packet->Copy();
    
    // PppHeader ppph;
	// copy->RemoveHeader(ppph);
    Ipv4Header ipv4Header;
    copy->PeekHeader(ipv4Header);
    Ipv4Address packetIp = ipv4Header.GetSource();

    return (m_destMask.IsMatch(m_destIp, packetIp));
}


FilterDestinationPort::FilterDestinationPort(uint32_t destPort)
    : m_destPort(destPort) {}

bool 
FilterDestinationPort::Match(Ptr<Packet> packet) const{
    //Check dest Port
    std::cout << "Matching Dest Port" << std::endl;

    Ptr<Packet> copy = packet->Copy();
    
    // PppHeader ppph;
	// copy->RemoveHeader(ppph);
    Ipv4Header ipv4Header;
    copy->RemoveHeader(ipv4Header);
    uint8_t packet_protocol = ipv4Header.GetProtocol();

    if (packet_protocol == 17) { //UDP
        UdpHeader udpHeader;
        copy->PeekHeader(udpHeader);
        uint16_t dest_port = udpHeader.GetDestinationPort();

        std::cout << "UDP Packet destPort: " << dest_port << " Matched: " << m_destPort << std::endl;

        return dest_port == m_destPort;
    }
    else if (packet_protocol == 6){ //TCP
        TcpHeader tcpHeader;
        copy->PeekHeader(tcpHeader);
        uint16_t dest_port = tcpHeader.GetDestinationPort();

        std::cout << "TCP Packet destPort: " << dest_port << " Matched: " << m_destPort << std::endl;
        
        return dest_port == m_destPort;
    }
    else {
        std::cout << "Invalid Protocol number in IP Header: " << static_cast<int>(packet_protocol) << std::endl;
        return 0;
    }
    
}

FilterProtocol::FilterProtocol(uint8_t protocol)
    : m_protocol(protocol) {}

bool 
FilterProtocol::Match(Ptr<Packet> packet) const{
    //Check dest Port
    std::cout << "Matching Protocol" << std::endl;

    Ptr<Packet> copy = packet->Copy();
    
    // PppHeader ppph;
	// copy->RemoveHeader(ppph);
    Ipv4Header ipv4Header;
    copy->RemoveHeader(ipv4Header);
    uint8_t packet_protocol = ipv4Header.GetProtocol();

    return packet_protocol == m_protocol;
    
}


// int main() {
    // FilterElements filter(Ipv4Address("10.0.0.1"));
    // FilterSourceMask filter(Ipv4Address("10.0.0.1"), Ipv4Mask("255.255.255.0"));
//     FilterSourcePort filter(10);
//     // FilterDestinationIPAddress filter(Ipv4Address("10.2.2.0"));
//     // FilterDestinationPort filter(30);
//     // FilterProtocol filter(6);

    // Ptr<Packet> packet = Create<Packet>();

    // Ipv4Header ipv4Header;
    // ipv4Header.SetSource(Ipv4Address("10.0.0.123"));
    // ipv4Header.SetDestination(Ipv4Address("10.2.2.0"));
    // ipv4Header.SetProtocol(6);
    
    // UdpHeader udpHeader;
    // udpHeader.SetSourcePort(10);
    // udpHeader.SetDestinationPort(30);
    // TcpHeader tcpHeader;
    // tcpHeader.SetSourcePort(10);
    // tcpHeader.SetDestinationPort(30);
    
//     // packet->AddHeader(udpHeader);
//     packet->AddHeader(tcpHeader);
//     packet->AddHeader(ipv4Header);

//     bool isMatch = filter.Match(packet);
//     if (isMatch){
//         std::cout << "Matches the filter criteria." << std::endl;
//     }
//     else {
//         std::cout << "Does not match" << std::endl;
//     }

//     return 0;

// }

