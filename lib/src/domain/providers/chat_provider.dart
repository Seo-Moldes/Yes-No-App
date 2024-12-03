import 'package:flutter/material.dart';
import 'package:yes_no_app/src/domain/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  List<Message> messageList = [
    Message(text: "Hola semental!", fromWho: FromWho.me),
    Message(text: "Ya llegaste de currar?", fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);

    notifyListeners();
    moveScrollToBottom();
  }

  void moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));

    chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
        duration: const Duration(microseconds: 300),
        curve: Curves.easeOut);
  }
}
