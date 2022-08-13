import 'package:flutter/material.dart';

class ChatInput extends StatelessWidget {
  ChatInput({Key? key}) : super(key: key);

  final _chatMessageControler = TextEditingController();

  void onSendButtonPressed(value){
    print('message: ${_chatMessageControler.text}');
    _chatMessageControler.clear();
    print('TextField cleared');
  }

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
          Expanded(
            child: TextField(
              textCapitalization: TextCapitalization.words,
              keyboardType: TextInputType.multiline,
              maxLines: 6,
              minLines: 1,
              controller: _chatMessageControler,
              style: TextStyle(color: Colors.white, fontSize: 22.0),
              decoration: InputDecoration(
                  hintText: 'Enter your message here!',
                  hintStyle:
                      TextStyle(color: Colors.deepPurple, fontSize: 17.0),
                  border: InputBorder.none),
            ),
          ),
          IconButton(
            onPressed: () {
              onSendButtonPressed(_chatMessageControler.text);
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
