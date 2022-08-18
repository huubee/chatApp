import 'package:chat_app/models/chat_message_entity.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final ChatMessageEntity entity;
  final Alignment alignment;

  const ChatBubble({Key? key, required this.entity, required this.alignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double borderRadius = 12.0;
    double textPadding = 12.0;
    double containerWidth = 200.0;

    return Align(
      alignment: alignment,
      child: Container(
        width: containerWidth,
        margin: const EdgeInsets.all(50.0),
        decoration: BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(borderRadius),
              topRight: Radius.circular(borderRadius),
              bottomLeft: Radius.circular(borderRadius),
            )),
        child: Padding(
          padding: EdgeInsets.all(textPadding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                entity.author.userName == 'Hubert'
                    ? 'Me'
                    : entity.author.userName,
              ),
              Text(
                entity.text,
                style: const TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              // Padding(
              //   padding: EdgeInsets.only(bottom: textPadding),
              // ),
              Text(entity.createdAt.toString()),
              if (entity.imageUrl != null)
                Image.network(
                  '${entity.imageUrl}',
                  height: 150.0,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
