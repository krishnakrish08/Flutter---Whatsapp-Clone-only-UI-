import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/views/chat/chat_list_view_item.dart';
import 'package:flutter_whatsapp_clone/views/contacts/select_contact_chat.dart';

import '../../model/chat_model.dart';

class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  List<ChatModel> chatList = [
    ChatModel("Rahul", "04:12 AM", false, "Hi, Good Morning", "person.svg"),
    ChatModel("Anusha", "07:25 PM", false, "She is good singer", "person.svg"),
    ChatModel(
        "Vijay", "11:32 PM", true, "We will meet in the stadium", "group.svg"),
    ChatModel(
        "Anil", "08:11 AM", false, "We will catch up later", "person.svg"),
    ChatModel("Radha", "06:45 PM", false, "Meeting has started. Please join !!",
        "person.svg"),
    ChatModel("Akshara", "3:27 AM", true,
        "I am need your help to solve maths problems", "group.svg"),
    ChatModel(
        "Vinay Raj", "12:12 PM", true, "Happy birthday Vinay", "group.svg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.chat),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: ((context) => const SelectContactForChat())));
        },
      ),
      body: ListView.builder(
          itemCount: chatList.length,
          itemBuilder: ((context, index) {
            return ChatListViewItem(chatArray: chatList[index]);
          })),
    );
  }
}
