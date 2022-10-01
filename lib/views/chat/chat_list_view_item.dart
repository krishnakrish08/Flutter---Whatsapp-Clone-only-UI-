import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_whatsapp_clone/model/chat_model.dart';
import 'package:flutter_whatsapp_clone/views/chat/chat_list_details_view.dart';

class ChatListViewItem extends StatelessWidget {
  final ChatModel chatArray;

  const ChatListViewItem({Key? key, required this.chatArray}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatListDetailsView(chatArrayDetail: chatArray),
                  ));
            },
            trailing: Text(chatArray.time),
            leading: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              radius: 24,
              child: SvgPicture.asset(
                chatArray.isGroupChat
                    ? "assets/groups.svg"
                    : "assets/person.svg",
                width: 32,
                height: 32,
                color: Colors.white,
              ),
            ),
            title: Text(
              chatArray.name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                const Icon(Icons.done_all),
                const SizedBox(
                  width: 8,
                ),
                Flexible(
                    child: Text(
                  chatArray.currentMessage,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ))
              ],
            )),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Divider(
            thickness: 1,
          ),
        )
      ],
    );
  }
}
