import 'package:chat_app/models/chat_message_entity.dart';
import 'package:chat_app/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatBubble extends StatelessWidget {
  final ChatMessageEntity entity;
  final Alignment alignment;

  const ChatBubble({Key? key, required this.entity, required this.alignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isAuthor =
        entity.author.userName == context.read<AuthService>().getUserName();
    double borderRadius = 12.0;
    double textPadding = 12.0;

    return Align(
      alignment: alignment,
      child: Container(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.65),
        margin: const EdgeInsets.all(10.0),
        decoration: isAuthor
            ? BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(borderRadius),
                  topRight: Radius.circular(borderRadius),
                  bottomLeft: Radius.circular(borderRadius),
                ))
            : BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(borderRadius),
                  topRight: Radius.circular(borderRadius),
                  bottomRight: Radius.circular(borderRadius),
                ),
              ),
        child: Padding(
          padding: EdgeInsets.all(textPadding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                entity.author.userName ==
                        context.read<AuthService>().getUserName().toString()
                    ? 'Me'
                    : entity.author.userName,
              ),
              Text(
                entity.text,
                style: const TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              if (entity.imageUrl != null)
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(borderRadius),
                    child: Image.network(
                      '${entity.imageUrl}',
                      // height: 150.0,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
