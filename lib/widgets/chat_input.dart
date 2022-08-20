import 'package:chat_app/models/chat_message_entity.dart';
import 'package:chat_app/widgets/picker_body.dart';
import 'package:flutter/material.dart';

class ChatInput extends StatelessWidget {
  final Function(ChatMessageEntity) onSubmit;

  ChatInput({Key? key, required this.onSubmit}) : super(key: key);

  final chatMessageController = TextEditingController();

  void onSendButtonPressed() {
    //print('ChatMessage: ${chatMessageController.text}');
    //to do: Add this new message to the default list

    final newChatMessage = ChatMessageEntity(
        text: chatMessageController.text,
        id: '244',
        createdAt: DateTime
            .now()
            .millisecondsSinceEpoch,
        author: Author(userName: 'Hubert'));

    onSubmit(newChatMessage); // chatMessageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                // isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return NetworkImagePickerBody();
                  });
            },
            icon: const Icon(
              Icons.image,
              color: Colors.white,
            ),
          ),
          Expanded(
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: 6,
                minLines: 1,
                controller: chatMessageController,
                textCapitalization: TextCapitalization.sentences,
                style: const TextStyle(color: Colors.white, fontSize: 22.0),
                decoration: const InputDecoration(
                    hintText: 'Enter your message here!',
                    hintStyle: TextStyle(
                        color: Colors.deepPurple, fontSize: 17.0),
                    border: InputBorder.none),
              )),
          IconButton(
            onPressed: onSendButtonPressed,
            icon: const Icon(
              Icons.send,
              color: Colors.white,
            ),
          ),
        ],
      ),
      decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
    );
  }
}
