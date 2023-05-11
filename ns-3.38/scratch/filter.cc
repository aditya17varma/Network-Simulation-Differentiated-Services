#include "filter.h"

Filter::Filter() {}
// Add a filter element to the filter
void Filter::AddFilterElement(FilterElements* filterElement) {
    
    // std::cout << "Elements Size before: " << elements.size() << std::endl;
    this->elements.push_back(filterElement);
    // std::cout << "Elements Size after: " << elements.size() << std::endl;
}

// Apply the filter to a packet
bool Filter::Match(Ptr<Packet> packet) {
    int filter_pass_count = 0;
    int filter_count = 0;

    // std::vector<FilterElements*> e = GetElements();

    // std::cout << "Elements Size " << e.size() << std::endl;

    for (int i = 0; i < elements.size(); i++) {
    // for (FilterElements *filterElement : this->elements) {
        // std::cout << "In Filter Match for loop " << std::endl;
        filter_count++;
        bool isMatch = elements[i]->Match(packet);
        if (isMatch) {
            filter_pass_count++;
        }
        else {
            std::cout << "Failed filter element: " << i << std::endl;
            return 0;
        }
    }
    std::cout << "Passed: " << filter_pass_count << " Out of: "<< filter_count << std::endl;
    return 1;
}

std::vector<FilterElements*> Filter::GetElements(){
    return this->elements;
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
//     // testFilter.AddAllFilterElements();

//     std::cout << "Hello There" << std::endl;

//     testFilter.AddFilterElement(&filterSourceIP);
//     testFilter.AddFilterElement(&filterSourceMask);
//     testFilter.AddFilterElement(&filterSourcePort);
//     testFilter.AddFilterElement(&filterDestinationIPAddress);
//     testFilter.AddFilterElement(&filterDestinationMask);
//     testFilter.AddFilterElement(&filterDestinationPort);
//     testFilter.AddFilterElement(&filterProtocol);

//     testFilter.Match(packet);

// }
