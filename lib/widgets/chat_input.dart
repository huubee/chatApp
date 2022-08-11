import 'package:flutter/material.dart';

class ChatInput extends StatelessWidget {
  const ChatInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              print('Add image');
            },
            icon: Icon(
              Icons.image,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              print('Message sent');
            },
            icon: Icon(
              Icons.send,
              color: Colors.white,
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.cyan,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(12.0),
        ),
      ),
    );
  }
}
