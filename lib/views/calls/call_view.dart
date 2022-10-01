import 'package:flutter/material.dart';

class CallView extends StatefulWidget {
  const CallView({Key? key}) : super(key: key);

  @override
  State<CallView> createState() => _CallViewState();
}

class _CallViewState extends State<CallView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_call),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/wallpaper1.jpg"),
              ),
              title: const Text("Arohana"),
              subtitle: Row(
                children: const [
                  Icon(
                    Icons.call_made,
                    size: 16,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text("5 minutes ago")
                ],
              ),
              trailing: const Icon(Icons.call),
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/wallpaper2.jpg"),
              ),
              title: const Text("Suvigna"),
              subtitle: Row(
                children: const [
                  Icon(
                    Icons.call_made,
                    size: 16,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text("15 minutes ago")
                ],
              ),
              trailing: const Icon(Icons.call),
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/wallpaper3.jpg"),
              ),
              title: const Text("Sranith"),
              subtitle: Row(
                children: const [
                  Icon(
                    Icons.call_made,
                    size: 16,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text("18 minutes ago")
                ],
              ),
              trailing: const Icon(Icons.call),
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/wallpaper4.jpg"),
              ),
              title: const Text("Srivan"),
              subtitle: Row(
                children: const [
                  Icon(
                    Icons.call_made,
                    size: 16,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text("31 minutes ago")
                ],
              ),
              trailing: const Icon(Icons.call),
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/wallpaper5.jpg"),
              ),
              title: const Text("Lambodhar"),
              subtitle: Row(
                children: const [
                  Icon(
                    Icons.call_made,
                    size: 16,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text("45 minutes ago")
                ],
              ),
              trailing: const Icon(Icons.call),
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/wallpaper6.jpg"),
              ),
              title: const Text("Bhishma"),
              subtitle: Row(
                children: const [
                  Icon(
                    Icons.call_made,
                    size: 16,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text("1 hour ago")
                ],
              ),
              trailing: const Icon(Icons.call),
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/wallpaper7.jpg"),
              ),
              title: const Text("Chihnitha"),
              subtitle: Row(
                children: const [
                  Icon(
                    Icons.call_made,
                    size: 16,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text("3 hour ago")
                ],
              ),
              trailing: const Icon(Icons.call),
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/wallpaper8.jpg"),
              ),
              title: const Text("Sandheeshwar"),
              subtitle: Row(
                children: const [
                  Icon(
                    Icons.call_made,
                    size: 16,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text("5 hours ago")
                ],
              ),
              trailing: const Icon(Icons.call),
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/sports_wallpaper2.jpg"),
              ),
              title: const Text("Dhoni"),
              subtitle: Row(
                children: const [
                  Icon(
                    Icons.call_made,
                    size: 16,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text("6 hours ago")
                ],
              ),
              trailing: const Icon(Icons.call),
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/flower_wallpaper2.jpg"),
              ),
              title: const Text("Pushpanth"),
              subtitle: Row(
                children: const [
                  Icon(
                    Icons.call_made,
                    size: 16,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text("8 hours ago")
                ],
              ),
              trailing: const Icon(Icons.call),
            ),
          ],
        ),
      ),
    );
  }
}
