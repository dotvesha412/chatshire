import 'package:flutter/material.dart';
//import 'package:chatshire/colors.dart';
import 'package:chatshire/info.dart';
//import 'package:chatshire/screens/mobile_chat_screen.dart';
import 'package:chatshire/widgets/my_message_card.dart';
import 'package:chatshire/widgets/sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          return MyMessageCard(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString(),
          );
        }
        return SenderMessageCard(
          message: messages[index]['text'].toString(),
          date: messages[index]['time'].toString(),
        );
      },
    );
  }
}
