
#include "ns3/core-module.h"
#include "ns3/network-module.h"
#include "ns3/internet-module.h"
#include "ns3/point-to-point-module.h"
#include "ns3/applications-module.h"
#include "ns3/traffic-control-module.h"
#include "ns3/flow-monitor-module.h"
#include "ns3/udp-header.h"
#include "ns3/queue.h"

#include "ns3/netanim-module.h" //network animation


// Network topology
//
//       172.168.1.0        172.168.2.0
// n0 -------------- n1 -------------- n2
//    p2p         (router)     p2p
//        100Mbps               10Mbos   
//                 Q1
//                 Q2
/*
1) The node in between is a simple single-queue router. 
That is, it has two netdevices:
    one connected to the client
    other to the server. 
Set the data-rate between the client to the router to 100Mbps
and the router to the server to 10Mbps.

*/

using namespace ns3;

NS_LOG_COMPONENT_DEFINE ("MyFirstScriptExample");

// Packet classification
// void classify(Ptr<Packet> packet, const TrafficControlLayer::PacketFilterPtr& filter, Ptr<TrafficControlLayer> layer)
// {
//     UdpHeader udpHeader;
//     packet->RemoveHeader(udpHeader);

//     if (udpHeader.GetDestinationPort() == 1000)
//     {
//         layer->AddToQueue(packet, filter, 0); // Enqueue packet to Queue 1
//     }
//     else if (udpHeader.GetDestinationPort() == 2000)
//     {
//         layer->AddToQueue(packet, filter, 1); // Enqueue packet to Queue 2
//     }
// }

// void schedule(Ptr<Queue<Packet>> queue)
// {
//     if (!queue->IsEmpty())
//     {
//         Ptr<Packet> packet = queue->Dequeue(); // Dequeue packet from Queue 1
//         // Send the packet to the outgoing link or server
//         // ...
//     }
// }

// void Schedule(Ptr<QueueDisc> queueDisc, Ptr<NetDevice> device){
//     // Check if Q1 empty, if not dequeue packet and send
//     if (!qqueueDisc->GetInternalQueue(1)->IsEmpty()){
//         Simulator::ScheduleNow(&NetDevice::Send, device, packet, InetSocketAddress::ConvertFrom(device->GetAddress()));

//     }
// }

int main (int argc, char *argv[]) {
    CommandLine cmd (__FILE__);
    cmd.Parse(argc, argv);

    Time::SetResolution (Time::NS);
    LogComponentEnable("UdpEchoClientApplication", LOG_LEVEL_INFO);
    LogComponentEnable("UdpEchoServerApplication", LOG_LEVEL_INFO);

//TODO: Create three nodes
    // NodeContainer n1;
    // NodeContainer n2;
    // NodeContainer n3;
    // n1.Create(1);
    // n2.Create(1);
    // n3.Create(1);
    NodeContainer nodes;
    nodes.Create(3);

//TODO: Create PointToPoint channels and set parameters; create devices, 
//      and install the channels on the nodes.

    // PointToPointHelper to create a point-to-point link between two nodes
    // Set data rate and propagation delay
    PointToPointHelper clientToRouter;
    clientToRouter.SetDeviceAttribute("DataRate", StringValue("100Mbps"));
    clientToRouter.SetChannelAttribute("Delay", StringValue("2ms"));
    
    PointToPointHelper routerToServer;
    routerToServer.SetDeviceAttribute("DataRate", StringValue("10Mbps"));
    routerToServer.SetChannelAttribute("Delay", StringValue("2ms"));
    // routerToServer.SetQueue("ns3::DropTailQueue", "MaxSize", StringValue("100p"))


    // Nodes contain a list of net devices
    // Add netdevices to the nodes
    NetDeviceContainer devicesClientRouter = clientToRouter.Install(nodes.Get(0), nodes.Get(1));

    NetDeviceContainer devicesRouterServer = routerToServer.Install(nodes.Get(1), nodes.Get(2));

    // InternetStackHelper sets up IP networking for a set of nodes
    // IPv4AddressHelper to set IPv4 addressing
    // Store IP interfaces in a IPv4InterfaceContainer
    InternetStackHelper stack;
    stack.Install(nodes);
    
    //Addresses assigned to devices, not the nodes
    Ipv4AddressHelper address1;
    address1.SetBase("172.168.1.0", "255.255.255.0");
    Ipv4InterfaceContainer interfacesClientRouter = address1.Assign(devicesClientRouter);

    Ipv4AddressHelper address2;
    address2.SetBase("172.168.2.0", "255.255.255.0");
    Ipv4InterfaceContainer interfacesRouterServer = address2.Assign(devicesRouterServer);


    //Modify Router
    // Ptr<Node> router = nodes.Get(1);

    // Ptr<Queue<Packet>> queue1 = CreateObject<Queue<Packet>>();
    // Ptr<Queue<Packet>> queue2 = CreateObject<Queue<Packet>>();

    // // Traffic Control for Router
    // TrafficControlHelper tch;
    // tch.SetRootQueueDisc("ns3::PfifoFastQueueDisc");

    // Ptr<TrafficControlLayer> tcLayer = CreateObject<TrafficControlLayer>();

    // NetDeviceContainer routerDevices = routerToServer.Install(router, nodes.Get(2));
    // tcLayer->Install(routerDevices.Get(0));

    // // Get the Traffic Control NetDeviceQueueInterface for the router
    // Ptr<NetDeviceQueueInterface> queueInterface = tcLayer->GetNetDeviceQueueInterface(routerDevices.Get(0));

    // // Set up filters for each queue
    // TrafficControlLayer::PacketFilterPtr filter1 = CreateObject<TrafficControlLayer::PacketFilter>();
    // filter1->SetAttribute("Protocol", UintegerValue(UDP));
    // filter1->SetAttribute("DstPort", UintegerValue(1000));

    // TrafficControlLayer::PacketFilterPtr filter2 = CreateObject<TrafficControlLayer::PacketFilter>();
    // filter2->SetAttribute("Protocol", UintegerValue(UDP));
    // filter2->SetAttribute("DstPort", UintegerValue(2000));

    // // Add filters to the queues
    // queueInterface->AddPacketFilter(filter1, queue1->GetTypeId());
    // queueInterface->AddPacketFilter(filter2, queue2->GetTypeId());

    // // Register classify function to handle incoming packets
    // queueInterface->SetEnqueueCallback(MakeCallback(&classify, filter1, tcLayer));
    // queueInterface->SetEnqueueCallback(MakeCallback(&classify, filter2, tcLayer));

    // //Callback for packet classification
    // Config::ConnectWithoutContext(
    //     "/NodesList/*/DeviceList/*/$ns3::PointToPointNetDevice/MacRx",
    //     MakeCallback(&Classify, queueDisc, devicesRouterServer.Get(1)->GetAddress())
    // );

    // Simulator::ScheduleNow(&QueueDisc::ScheduleTransmit, queueDisc, 1);

    


//TODO: Use the associalted "helpers" to create UdpEchoServer and UdpEchoClient applications, 
//      install each app on the designated node, set Start and Stop times for each app, 
//      and use SetAttribute to set the proper parameters for the client app.

    // PORT 1000
    UdpEchoServerHelper echoServer1(1000);
    ApplicationContainer serverApps1 = echoServer1.Install(nodes.Get(2));
    serverApps1.Start(Seconds(1.0));
    serverApps1.Stop(Seconds(10.0));

    UdpEchoClientHelper echoClient1(interfacesRouterServer.GetAddress(1), 1000);
    echoClient1.SetAttribute("MaxPackets", UintegerValue(10));
    echoClient1.SetAttribute("Interval", TimeValue(Seconds(1.0)));
    echoClient1.SetAttribute("PacketSize", UintegerValue(1024));

    //client should start after server is enabled
    //Install client on node 0
    ApplicationContainer clientApps1 = echoClient1.Install(nodes.Get(0));
    clientApps1.Start(Seconds(2.0));
    clientApps1.Stop(Seconds(10.0));


    
    //PORT 2000
    UdpEchoServerHelper echoServer2(2000);
    ApplicationContainer serverApps2 = echoServer2.Install(nodes.Get(2));
    serverApps2.Start(Seconds(1.0));
    serverApps2.Stop(Seconds(10.0));

    
    UdpEchoClientHelper echoClient2(interfacesRouterServer.GetAddress(1), 2000);
    echoClient2.SetAttribute("MaxPackets", UintegerValue(10));
    echoClient2.SetAttribute("Interval", TimeValue(Seconds(1.0)));
    echoClient2.SetAttribute("PacketSize", UintegerValue(1024));

    ApplicationContainer clientApps2 = echoClient2.Install(nodes.Get(0));
    clientApps2.Start(Seconds(2.0));
    clientApps2.Stop(Seconds(10.0));

//TODO: Use SetFill in the client app to populate the payload.

// std::string word = "Hello World";
// echoClient.SetFill(clientApps.Get(0), word);

// Simulator::Schedule(Seconds(1.0), &schedule, queue1);

Packet::EnablePrinting();

//Enable generating the pcap files.
clientToRouter.EnablePcap("pcap_files/client-router", devicesClientRouter.Get(1));
routerToServer.EnablePcap("pcap_files/router-server", devicesRouterServer.Get(0));



AnimationInterface anim("lab32.xml");
anim.SetConstantPosition(nodes.Get(0), 10.0, 10.0);
anim.SetConstantPosition(nodes.Get(1), 20.0, 20.0);
anim.SetConstantPosition(nodes.Get(2), 30.0, 30.0);

//ASCII Format Tracing
// AsciiTraceHelper ascii;
// pointToPoint.EnableAsciiAll(ascii.CreateFileStream("simple.tr"));

//Routing Tables
Ipv4GlobalRoutingHelper::PopulateRoutingTables();


Simulator::Run ();
Simulator::Destroy ();

return 0;




}


