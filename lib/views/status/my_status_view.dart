import 'package:flutter/material.dart';

class MyStatusView extends StatelessWidget {
  const MyStatusView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        "My status",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: const Text("Tap to add status update"),
      leading: Stack(
        children: const [
          CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage("assets/rahuldravid.jpg"),
          ),
          Positioned(
            right: 4,
            bottom: 4,
            child: CircleAvatar(
              backgroundColor: Colors.yellow,
              radius: 12,
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
