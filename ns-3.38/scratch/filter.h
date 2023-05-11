#ifndef FILTER_H
#define FILTER_H

#include "ns3/core-module.h"
#include "ns3/network-module.h"
#include "ns3/ipv4-header.h"
#include "ns3/udp-header.h"
#include "ns3/tcp-header.h"
#include "filter_elements.h"
#include "filter_elements.cc"
#include <vector>
#include <memory>


using namespace ns3;

class Filter {
public:
    Filter();

    void AddFilterElement(FilterElements* filterElements);

    void AddAllFilterElements();

    bool Match(Ptr<Packet> packet);

    std::vector<FilterElements*> elements;

    std::vector<FilterElements*> GetElements();


};

#endif //FILTER.H