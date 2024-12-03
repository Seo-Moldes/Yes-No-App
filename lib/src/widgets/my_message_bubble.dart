// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:yes_no_app/src/domain/message.dart';

class MessageBubble extends StatelessWidget {
  final Message message;
  const MessageBubble({
    super.key,
    required this.message});

  @override
  Widget build(BuildContext context) {
   
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10 ),
            child: Text(message.text),
          ),
        ),
        const SizedBox(height: 10,)
      ],
    );
  }
}