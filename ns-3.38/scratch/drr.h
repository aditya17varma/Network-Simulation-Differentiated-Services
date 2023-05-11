#ifndef DRR_H
#define DRR_H

#include "ns3/core-module.h"
#include "ns3/network-module.h"
#include "ns3/ipv4-header.h"
#include "ns3/udp-header.h"
#include "ns3/tcp-header.h"
#include "ns3/queue.h"
#include "diff_serv.h"
#include "traffic_class.h"
#include "filter.h"
#include "filter_elements.h"
#include "diff_serv.cc"
#include <vector>
#include <queue>


using namespace ns3;

class DRR: public DiffServ {
    public:
        DRR():

        ns3::Ptr<const ns3::Packet> Schedule() const override;

    private:
        Ptr<const Packet> DoPeek() const override;

        std::vector<uint32_t> deficitVector;

        uint32_t GetDeficit(int index);
        
        void SetDeficit(int index, uint32_t deficit);

};

#endif // DRR_H