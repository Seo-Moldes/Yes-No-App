import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
   
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20)
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10 ),
            child: Text("Teta", style: TextStyle(color: Colors.white),),
          ),
        ),
        const SizedBox(height: 5,),

        const ImageBubble()
      ],
    );
  }
}

class ImageBubble extends StatelessWidget {
  const ImageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network("https://yesno.wtf/assets/yes/4-c53643ecec77153eefb461e053fb4947.gif");
  }
}