import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/screens/camera/camera_screen.dart';
import 'package:flutter_whatsapp_clone/views/calls/call_view.dart';
import 'package:flutter_whatsapp_clone/views/chat/chat_view.dart';
import 'package:flutter_whatsapp_clone/views/status/status_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Whats App Clone"),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: const [
              Tab(
                icon: Icon(Icons.camera),
              ),
              Tab(
                text: "Chat",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Calls",
              )
            ],
            controller: tabController,
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            PopupMenuButton<String>(itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  child: Text("New Group"),
                  value: "New Group",
                ),
                const PopupMenuItem(
                  child: Text("New Broadcast"),
                  value: "New Broadcast",
                ),
                const PopupMenuItem(
                  child: Text("Whatsapp Web"),
                  value: "Whatsapp Web",
                ),
                const PopupMenuItem(
                  child: Text("Starred Messages"),
                  value: "Starred Messages",
                ),
                const PopupMenuItem(
                  child: Text("Settings"),
                  value: "Settings",
                )
              ];
            })
          ]),
      body: TabBarView(
        
        controller: tabController,
        children: const [
          CameraScreen(),
          ChatView(),
          StatusView(),
          CallView()
        ],
      ),
    );
  }
}
