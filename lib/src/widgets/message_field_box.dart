import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {

    final textController = TextEditingController();
    final focusNode = FocusNode();

    final OutlineInputBorder = UnderlineInputBorder(

        borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));
    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: InputDecoration(
        hintText: 'End your message with a "?"',
        enabledBorder: OutlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send),

          onPressed: () {
        final textValue = textController.value.text;
        print("button: $textValue");
        textController.clear();
        focusNode.requestFocus();


          },
        ),
      ),
      onFieldSubmitted: (value) {
        print("Submit value $value");
      },
    );
  }
}
