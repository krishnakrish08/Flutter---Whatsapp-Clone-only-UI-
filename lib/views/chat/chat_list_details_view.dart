import 'dart:io';

import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../model/chat_model.dart';

class ChatListDetailsView extends StatefulWidget {
  final ChatModel chatArrayDetail;

  const ChatListDetailsView({Key? key, required this.chatArrayDetail})
      : super(key: key);

  @override
  State<ChatListDetailsView> createState() => _ChatListDetailsViewState();
}

final TextEditingController _controller = TextEditingController();
bool isEmojiShown = false;

class _ChatListDetailsViewState extends State<ChatListDetailsView> {
  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        titleSpacing: 0,
        leadingWidth: 60,
        leading: InkWell(
          splashColor: Colors.amber,
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(child: Icon(Icons.arrow_back)),
              Expanded(
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.blueGrey,
                  child: SvgPicture.asset(
                    widget.chatArrayDetail.isGroupChat
                        ? "assets/groups.svg"
                        : "assets/person.svg",
                    width: 32,
                    height: 32,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        title: InkWell(
          onTap: () {},
          splashColor: Colors.blueAccent,
          child: Container(
            margin: const EdgeInsets.all(6),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.chatArrayDetail.name),
                  Text(
                    "Last seen today at " + widget.chatArrayDetail.time,
                    style: const TextStyle(
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                        color: Colors.white),
                  )
                ]),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.videocam)),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          PopupMenuButton<String>(itemBuilder: (BuildContext context) {
            return [
              const PopupMenuItem(
                child: Text("View Contacts"),
                value: "View Contacts",
              ),
              const PopupMenuItem(
                child: Text("Media, links, and docs"),
                value: "Media, links, and docs",
              ),
              const PopupMenuItem(
                child: Text("Search"),
                value: "Search",
              ),
              const PopupMenuItem(
                child: Text("Mute notifications"),
                value: "Mute notifications",
              ),
              const PopupMenuItem(
                child: Text("Disappearing messages"),
                value: "Disappearing messages",
              ),
              const PopupMenuItem(
                child: Text("Wallpaper"),
                value: "Wallpaper",
              ),
              const PopupMenuItem(
                child: Text("More"),
                value: "More",
              )
            ];
          })
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: WillPopScope(
          onWillPop: () {
            if (isEmojiShown) {
              setState(() {
                isEmojiShown = false;
              });
            } else {
              Navigator.pop(context);
            }
            return Future.value(false);
          },
          child: Stack(
            children: [
              ListView(),
              Align(
                alignment: Alignment.bottomCenter,
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 56,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          child: TextFormField(
                            focusNode: focusNode,
                            controller: _controller,
                            onTap: () {
                              isEmojiShown = false;
                              print(" emoji -- $isEmojiShown");
                            },
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                                hintText: "Type a message",
                                hintMaxLines: 5,
                                prefixIcon: InkWell(
                                    onTap: () {
                                      setState(() {
                                        focusNode.unfocus();
                                        focusNode.canRequestFocus = false;
                                        // FocusManager.instance.primaryFocus?.unfocus();
                                        isEmojiShown = !isEmojiShown;
                                        // ScaffoldMessenger.of(context)
                                        //     .showSnackBar(const SnackBar(
                                        //         content: Text("Emoji")));
                                        // getEmojiPicker();
                                      });
                                    },
                                    child: const Icon(Icons.emoji_emotions)),
                                suffixIcon: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (builder) =>
                                                  showAttachmentsInBottomSheet());
                                        },
                                        icon: const Icon(Icons.attach_file)),
                                    IconButton(
                                        onPressed: () {},
                                        padding:
                                            const EdgeInsets.only(right: 4),
                                        icon: const Icon(
                                            Icons.camera_alt_outlined))
                                  ],
                                ),
                                contentPadding: const EdgeInsets.all(8),
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: InkWell(
                          onTap: () {},
                          child: const CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.blueGrey,
                            child: Icon(Icons.mic),
                          ),
                        ),
                      )
                    ],
                  ),
                  isEmojiShown ? getEmojiPicker() : Container(),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget showAttachmentsInBottomSheet() {
  return SizedBox(
    height: 270,
    child: Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: const [
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.file_present,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Attachment",
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
              const SizedBox(
                width: 40,
              ),
              Column(
                children: const [
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.red,
                    child: Icon(
                      Icons.camera,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Camera",
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
              const SizedBox(
                width: 40,
              ),
              Column(
                children: const [
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.purple,
                    child: Icon(Icons.image),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Gallery",
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            width: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: const [
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.orange,
                    child: Icon(
                      Icons.music_note,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Audio",
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
              const SizedBox(
                width: 40,
              ),
              Column(
                children: const [
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.location_pin,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Location",
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
              const SizedBox(
                width: 40,
              ),
              Column(
                children: const [
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.pinkAccent,
                    child: Icon(
                      Icons.contact_phone,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Contact",
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
    ),
  );
}

Widget getEmojiPicker() {
  return Offstage(
    offstage: !isEmojiShown,
    child: SizedBox(
      height: 250,
      child: EmojiPicker(
        textEditingController: _controller,
        onEmojiSelected: (category, emoji) {
          _controller.text = _controller.text + emoji.emoji;
        },
        config: Config(
          columns: 7,
          emojiSizeMax: 32 * (Platform.isIOS ? 1.30 : 1.0),
          verticalSpacing: 0,
          horizontalSpacing: 0,
          gridPadding: EdgeInsets.zero,
          initCategory: Category.RECENT,
          bgColor: const Color(0xFFF2F2F2),
          indicatorColor: Colors.blue,
          iconColor: Colors.grey,
          iconColorSelected: Colors.blue,
          progressIndicatorColor: Colors.blue,
          backspaceColor: Colors.blue,
          skinToneDialogBgColor: Colors.white,
          skinToneIndicatorColor: Colors.grey,
          enableSkinTones: true,
          showRecentsTab: true,
          recentsLimit: 28,
          noRecents: const Text(
            'No Recents',
            style: TextStyle(fontSize: 20, color: Colors.black26),
            textAlign: TextAlign.center,
          ),
          tabIndicatorAnimDuration: kTabScrollDuration,
          categoryIcons: const CategoryIcons(),
          buttonMode: ButtonMode.MATERIAL,
        ),
      ),
    ),
  );
}
