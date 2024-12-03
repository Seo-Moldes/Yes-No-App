import 'package:flutter/material.dart';
import 'package:yes_no_app/src/widgets/her_message_bubble.dart';
import 'package:yes_no_app/src/widgets/message_field_box.dart';
import 'package:yes_no_app/src/widgets/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://www.slovenskenovice.si/media/images/20230821/1505492.aec567cd.fill-256x256.jpg"),
          ),
        ),
        title: const Text("Charlize"),
        centerTitle: true,
      ),
      body: const ChatView(),
    );
  } 
}

class ChatView extends StatelessWidget {
  const ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return (index % 2 == 0) 
                      ? const HerMessageBubble()
                      : const MessageBubble();
                    })),
                    //caja de texto
           const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
