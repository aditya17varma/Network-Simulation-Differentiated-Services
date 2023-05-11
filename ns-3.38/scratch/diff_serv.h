#ifndef DIFF_SERV_H
#define DIFF_SERV_H

#include "ns3/core-module.h"
#include "ns3/network-module.h"
#include "ns3/ipv4-header.h"
#include "ns3/udp-header.h"
#include "ns3/tcp-header.h"
#include "ns3/queue.h"
// #include "project2/filter.h"
// #include "project2/filter_elements.h"
// #include "project2/traffic_class.h"
// #include "project2/traffic_class.cc"
#include "filter.h"
#include "filter_elements.h"
#include "traffic_class.h"
#include "traffic_class.cc"
#include <vector>
#include <queue>

using namespace ns3;

class DiffServ : Queue<Packet> {
    public:
        DiffServ();

        // void SetMode(QueueMode mode);

        //QueueMode GetMode();

        virtual Ptr<const Packet> Schedule() const = 0;

        uint32_t Classify(Ptr<Packet> packet);

        virtual bool Enqueue(Ptr<Packet> packet) override;

        virtual Ptr<Packet> Dequeue() override;

        virtual Ptr<Packet> Remove() override;

        
        // using Queue::Peek; //to avoid 'hides overloaded virtual function'
        virtual Ptr<const Packet> Peek() const override;

        void InitializeTrafficClass(Ipv4Address srcIP, Ipv4Address destIP, int destPort);

        std::vector<TrafficClass*> Get_QClass() const;

        void setNumQueues(int num);

        void AddTrafficClass(TrafficClass tc);


    private:
        std::vector<TrafficClass*> q_class;

        int numQueues;

        virtual bool DoEnqueue(Ptr<Packet> packet);

        virtual Ptr<Packet> DoDequeue();

        virtual Ptr<Packet> DoRemove();

        virtual Ptr<const Packet> DoPeek() const = 0;

};

#endif //DIFF_SERV_H