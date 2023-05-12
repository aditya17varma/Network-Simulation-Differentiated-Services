#ifndef DRR_H
#define DRR_H

#include "ns3/core-module.h"
#include "ns3/network-module.h"
#include "ns3/ipv4-header.h"
#include "ns3/udp-header.h"
#include "ns3/tcp-header.h"
#include "ns3/queue.h"
#include "traffic_class.h"
#include "filter.h"
#include "filter_elements.h"
#include "diff_serv.h"
#include "diff_serv.cc"
#include <vector>
#include <queue>

using namespace ns3;

class DRR: public DiffServ {

    public:
        DRR();

        Ptr<const Packet> Schedule() const override;



        uint32_t GetDeficit(uint32_t index);

        void SetDeficit(uint32_t index, uint32_t deficit);

        void InitializeDeficit(uint32_t deficit);

        std::vector<uint32_t> GetActiveList();

        void InsertActiveList(uint32_t index);

        uint32_t quantum;


    private:
        Ptr<const Packet> DoPeek() const override;

        mutable std::vector<uint32_t> deficitVector;

        mutable std::vector<uint32_t> activeList;

        uint32_t GetNextQueue();

        bool DoEnqueue(Ptr<Packet> packet) override;

        Ptr<Packet> DoDequeue() override;

};


#endif // DRR_H