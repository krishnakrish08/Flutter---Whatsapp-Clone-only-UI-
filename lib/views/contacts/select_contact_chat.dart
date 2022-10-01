import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/views/contacts/contacts_card_view.dart';

class SelectContactForChat extends StatefulWidget {
  const SelectContactForChat({Key? key}) : super(key: key);

  @override
  State<SelectContactForChat> createState() => _SelectContactForChatState();
}

class _SelectContactForChatState extends State<SelectContactForChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Select contact",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              "51 contacts",
            )
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          PopupMenuButton(
            itemBuilder: (context) {
              return const [
                PopupMenuItem(
                  child: Text("Invite friend"),
                  value: "Invite a friend",
                ),
                PopupMenuItem(
                  child: Text("Contacts"),
                  value: "Contacts",
                ),
                PopupMenuItem(
                  child: Text("Refresh"),
                  value: "Refresh",
                ),
                PopupMenuItem(
                  child: Text("Help"),
                  value: "Help",
                )
              ];
            },
          )
        ],
      ),
      body: const ContactsCardView(),
    );
  }
}
