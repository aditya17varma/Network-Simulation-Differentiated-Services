#ifndef FILTER_ELEMENTS_H
#define FILTER_ELEMENTS_H

#include "ns3/core-module.h"
#include "ns3/network-module.h"
#include "ns3/ipv4-header.h"
#include "ns3/udp-header.h"
#include "ns3/tcp-header.h"
#include "ns3/ppp-header.h"

using namespace ns3;

//Base class
class FilterElements {
public:
    // virtual ~FilterElements() {}

    // virtual match method to be overriden by derivded classes
    virtual bool Match(Ptr<Packet> packet) const = 0;
};

//Derived class
class FilterSourceIPAddress: public FilterElements {
public:
    FilterSourceIPAddress(Ipv4Address srcIp);

    bool Match(Ptr<Packet> packet) const override;

private:
    Ipv4Address m_srcIp;
};

class FilterSourceMask: public FilterElements {
public:
    FilterSourceMask(Ipv4Address srcIp, Ipv4Mask srcMask);

    bool Match(Ptr<Packet> packet) const override;

private:
    Ipv4Address m_srcIp;
    Ipv4Mask m_srcMask;
};

class FilterSourcePort: public FilterElements {
public:
    FilterSourcePort(uint32_t srcPort);

    bool Match(Ptr<Packet> packet) const override;

private:
    uint32_t m_srcPort;
};

class FilterDestinationIPAddress: public FilterElements {
public:
    FilterDestinationIPAddress(Ipv4Address destIp);

    bool Match(Ptr<Packet> packet) const override;

private:
    Ipv4Address m_destIp;
};

class FilterDestinationMask: public FilterElements {
public:
    FilterDestinationMask(Ipv4Address destIp, Ipv4Mask destMask);

    bool Match(Ptr<Packet> packet) const override;

private:
    Ipv4Address m_destIp;
    Ipv4Mask m_destMask;
};

class FilterDestinationPort: public FilterElements {
public:
    FilterDestinationPort(uint32_t destPort);

    bool Match(Ptr<Packet> packet) const override;

private:
    uint32_t m_destPort;
};

class FilterProtocol: public FilterElements {
public:
    FilterProtocol(uint8_t protocol);

    bool Match(Ptr<Packet> packet) const override;

private:
    uint8_t m_protocol;
};

#endif //FILTER_ELEMENTS_H