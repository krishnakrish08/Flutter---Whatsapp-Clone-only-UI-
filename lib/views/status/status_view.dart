import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/views/status/my_status_view.dart';
import 'package:flutter_whatsapp_clone/views/status/recent_updates_view.dart';

class StatusView extends StatefulWidget {
  const StatusView({Key? key}) : super(key: key);

  @override
  State<StatusView> createState() => _StatusViewState();
}

class _StatusViewState extends State<StatusView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
          onPressed: () {},
          child: IconButton(
            onPressed: (() {}),
            icon: const Icon(Icons.edit),
            color: Colors.yellowAccent,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        FloatingActionButton(
          onPressed: () {},
          child: IconButton(
            onPressed: (() {}),
            icon: const Icon(Icons.camera),
            color: Colors.yellowAccent,
          ),
        ),
      ]),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            MyStatusView(),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text("Recent updates"),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage("assets/wallpaper1.jpg"),
              ),
              title: Text("Aruna"),
              subtitle: Text("25 minutes ago"),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage("assets/wallpaper2.jpg"),
              ),
              title: Text("Anusha"),
              subtitle: Text("32 minutes ago"),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage("assets/wallpaper3.jpg"),
              ),
              title: Text("Mineeth"),
              subtitle: Text("51 minutes ago"),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage("assets/wallpaper4.jpg"),
              ),
              title: Text("Veeriksha"),
              subtitle: Text("Today 07:36 AM"),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage("assets/wallpaper5.jpg"),
              ),
              title: Text("Praveeth"),
              subtitle: Text("Today 12:12 PM"),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage("assets/wallpaper6.jpg"),
              ),
              title: Text("Ashwith"),
              subtitle: Text("Yesterday 05:48 AM"),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage("assets/wallpaper7.jpg"),
              ),
              title: Text("Hasini"),
              subtitle: Text("Yesterday 08:11 PM"),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage("assets/wallpaper8.jpg"),
              ),
              title: Text("Sweenisha"),
              subtitle: Text("Yesterday 09:31 PM"),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage("assets/wallpaper9.jpg"),
              ),
              title: Text("Rineesh"),
              subtitle: Text("Yesterday 10:11 PM"),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text("Viewed updates"),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage("assets/sports_wallpaper1.jpg"),
              ),
              title: Text("Jordan"),
              subtitle: Text("Yesterday 05:48 AM"),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage("assets/sports_wallpaper2.jpg"),
              ),
              title: Text("Dhoni"),
              subtitle: Text("Yesterday 08:11 PM"),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage("assets/flower_wallpaper1.jpg"),
              ),
              title: Text("Sweenisha"),
              subtitle: Text("Yesterday 09:31 PM"),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage("assets/flower_wallpaper2.jpg"),
              ),
              title: Text("Rineesh"),
              subtitle: Text("Yesterday 10:11 PM"),
            ),
          ],
        ),
      ),
    );
  }
}
