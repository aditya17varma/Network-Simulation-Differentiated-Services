#ifndef SPQ_H
#define SPQ_H

#include "ns3/core-module.h"
#include "ns3/network-module.h"
#include "ns3/ipv4-header.h"
#include "ns3/udp-header.h"
#include "ns3/tcp-header.h"
#include "ns3/queue.h"
#include "diff_serv.h"
// #include "diff_serv.cc"
#include "traffic_class.h"
// #include "traffic_class.cc"
#include "filter.h"
#include "filter_elements.h"
#include "diff_serv.cc"

using namespace ns3;

class SPQ: public DiffServ {
    public:
        SPQ();

        // ~SPQ();

        Ptr<const Packet> Schedule() const override;

        void setPriority(int q, uint32_t p);
    
    private:
        Ptr<const Packet> DoPeek() const override;
};


#endif // SPQ_H