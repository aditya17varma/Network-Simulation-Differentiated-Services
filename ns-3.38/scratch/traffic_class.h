#ifndef TRAFFIC_CLASS_H
#define TRAFFIC_CLASS_H

#include "ns3/core-module.h"
#include "ns3/network-module.h"
#include "ns3/ipv4-header.h"
#include "ns3/udp-header.h"
#include "ns3/tcp-header.h"
#include "filter.h"
#include "filter.cc"
#include "filter_elements.h"
#include <vector>
#include <queue>


using namespace ns3;

class TrafficClass {
public:
    TrafficClass();

    bool Enqueue(Ptr<Packet> packet);

    Ptr<Packet> Dequeue();

    bool Match(Ptr<Packet> packet);

    bool IsEmpty();

    std::vector<Filter*> filters;

    size_t GetNumFilters();

    void set_bytes(uint32_t num_bytes);
    uint32_t get_bytes();

    void set_packets(uint32_t num_packeets);
    uint32_t get_packets();

    void set_maxPackets(uint32_t maxPackets);
    uint32_t get_maxPackets();

    void set_maxBytes(uint32_t numBytes);
    uint32_t get_maxBytes();

    void set_weight(uint32_t weight);
    uint32_t get_weight();

    void set_priority_level(uint32_t pl);
    uint32_t get_priority_level();

    void AddFilter(Filter);

    std::queue<Ptr<Packet>> GetQueue();

    Ptr<Packet> Peek() const;

private:
    uint32_t bytes;
    uint32_t packets;
    uint32_t maxPackets;
    uint32_t maxBytes;
    double_t weight;
    uint32_t priority_level;
    // bool isDefault;
    std::queue<Ptr<ns3::Packet>> m_queue;
};

#endif //TRAFFIC_CLASS_H