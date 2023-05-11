
#include "ns3/core-module.h"
#include "ns3/network-module.h"
#include "ns3/internet-module.h"
#include "ns3/point-to-point-module.h"
#include "ns3/applications-module.h"

#include "ns3/netanim-module.h" //network animation


// Default Network Topology
//
//       10.1.1.0
// n0 -------------- n1
//    point-to-point
//

using namespace ns3;

NS_LOG_COMPONENT_DEFINE ("MyFirstScriptExample");

int main (int argc, char *argv[]) {
    CommandLine cmd (__FILE__);
    cmd.Parse(argc, argv);

    Time::SetResolution (Time::NS);
    LogComponentEnable("UdpEchoClientApplication", LOG_LEVEL_INFO);
    LogComponentEnable("UdpEchoServerApplication", LOG_LEVEL_INFO);

//TODO: Create two nodes
    NodeContainer nodes;
    nodes.Create(2);

//TODO: Create a PointToPoint channel and set its parameters; create devices, 
//      and install the channel on the nodes.
    PointToPointHelper pointToPoint;
    pointToPoint.SetDeviceAttribute("DataRate", StringValue("5Mbps"));
    pointToPoint.SetChannelAttribute("Delay", StringValue("2ms"));

    NetDeviceContainer devices;
    devices = pointToPoint.Install(nodes);

    InternetStackHelper stack;
    stack.Install(nodes);
    

//TODO: Use Ipv4InterfaceContainer, InternetStackHelper, and Ipv4AddressHelper 
//      to install and assign IPv4 addresses.
    Ipv4AddressHelper address;
    // IP address starting base, subline mask
    address.SetBase("10.1.1.0", "255.255.255.0");

    Ipv4InterfaceContainer interfaces = address.Assign(devices);

//TODO: Use the associalted "helpers" to create UdpEchoServer and UdpEchoClient applications, 
//      install each app on the designated node, set Start and Stop times for each app, 
//      and use SetAttribute to set the proper parameters for the client app.

    // port number open on server
    UdpEchoServerHelper echoServer(9);

    ApplicationContainer serverApps = echoServer.Install(nodes.Get(1));
    serverApps.Start(Seconds(1.0));
    serverApps.Stop(Seconds(10.0));

    UdpEchoClientHelper echoClient(interfaces.GetAddress(1), 9);
    echoClient.SetAttribute("MaxPackets", UintegerValue(1));
    echoClient.SetAttribute("Interval", TimeValue(Seconds(1.0)));
    echoClient.SetAttribute("PacketSize", UintegerValue(1024));

    //client should start after server is enabled
    ApplicationContainer clientApps = echoClient.Install(nodes.Get(0));
    clientApps.Start(Seconds(2.0));
    clientApps.Stop(Seconds(10.0));

//TODO: Use SetFill in the client app to populate the payload.

std::string word = "Hello World";
echoClient.SetFill(clientApps.Get(0), word);

Packet::EnablePrinting();


//Enable generating the pcap files.
pointToPoint.EnablePcapAll("simple-udp-echo");


AnimationInterface anim("simple.xml");
anim.SetConstantPosition(nodes.Get(0), 10.0, 10.0);
anim.SetConstantPosition(nodes.Get(1), 20.0, 20.0);

//ASCII Format Tracing
AsciiTraceHelper ascii;
pointToPoint.EnableAsciiAll(ascii.CreateFileStream("simple.tr"));


Simulator::Run ();
Simulator::Destroy ();

return 0;




}


