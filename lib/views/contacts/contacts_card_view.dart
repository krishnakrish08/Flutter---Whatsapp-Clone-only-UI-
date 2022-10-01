import 'package:flutter/material.dart';

import '../../model/contact_model.dart';

class ContactsCardView extends StatefulWidget {
  const ContactsCardView({Key? key}) : super(key: key);

  @override
  State<ContactsCardView> createState() => _ContactsCardViewState();
}

class _ContactsCardViewState extends State<ContactsCardView> {
  final List<ContactModel> contactsList = [
    ContactModel("Arun",
        "You may hold my hand for a while, but you hold my heart forever."),
    ContactModel("Anusha", "I am happiest when I’m right next to you."),
    ContactModel(
        "Sweenitha", "“I love you” begins by I, but it ends up by you."),
    ContactModel("Shantana Nandan", "I need you like a heart needs a beat."),
    ContactModel("Krishna", "Your love is all I need to feel complete."),
    ContactModel(
        "Vignesh", "Every time I see you, I fall in love all over again."),
    ContactModel("Ranadheesh", "If I know what love is, it is because of you."),
    ContactModel("Shrenitha",
        "The first time you touched me, I knew I was born to be yours.")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: contactsList.length,
      itemBuilder: (context, index) {
        if (index == 0) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: const [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.green,
                  child: Icon(Icons.group_add, color: Colors.white,),
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  "New group",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          );
        } else if (index == 1) {
          return Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16),
            child: Row(
              children: const [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.green,
                  child: Icon(Icons.person_add, color: Colors.white,),
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  "New contact",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          );
        } else {
          return ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.lightBlue,
              radius: 24,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            title: Text(
              contactsList[index].contactName,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(contactsList[index].status),
          );
        }
      },
    );
  }
}
