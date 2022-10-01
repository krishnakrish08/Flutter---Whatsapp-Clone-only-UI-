import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/model/recent_updates.dart';

class RecentUpdatesStatusView extends StatefulWidget {
  const RecentUpdatesStatusView({Key? key}) : super(key: key);

  @override
  State<RecentUpdatesStatusView> createState() =>
      _RecentUpdatesStatusViewState();
}

class _RecentUpdatesStatusViewState extends State<RecentUpdatesStatusView> {
  final List<RecentUpdates> recentStatusArray = [
    RecentUpdates("Aruna", "25 minutes ago", "assets/wallpaper1.jpg"),
    RecentUpdates("Anusha", "32 minutes ago", "assets/wallpaper2.jpg"),
    RecentUpdates("Mineeth", "51 minutes ago", "assets/wallpaper3.jpg"),
    RecentUpdates("Veeriksha", "Today 07:36 AM", "assets/wallpaper4.jpg"),
    RecentUpdates("Praveeth", "Today 12:12 PM", "assets/wallpaper5.jpg"),
    RecentUpdates("Ashwith", "Yesterday 05:48 AM", "assets/wallpaper6.jpg"),
    RecentUpdates("Hasini", "Yesterday 08:11 PM", "assets/wallpaper7.jpg"),
    RecentUpdates("Sweenisha", "Yesterday 09:31 PM", "assets/wallpaper8.jpg"),
    RecentUpdates("Rineesh", "Yesterday 10:11 PM", "assets/wallpaper9.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: recentStatusArray.length,
        itemBuilder: ((context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage(recentStatusArray[index].images),
            ),
            title: Text(recentStatusArray[index].name),
            subtitle: Text(recentStatusArray[index].timeLapse),
          );
        }),
      ),
    );
  }
}
