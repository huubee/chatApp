import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final Alignment alignment;

  const ChatBubble({Key? key, required this.alignment, required this.message})
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
        child: Padding(
          padding: EdgeInsets.all(textPadding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '$message',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: textPadding),
              ),
              Image.network(
                  'https://static.scientificamerican.com/sciam/cache/file/4F73FD83-3377-42FC-915AD56BD66159FE_source.jpg')
            ],
          ),
        ),
        margin: EdgeInsets.all(50.0),
        decoration: BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(borderRadius),
              topRight: Radius.circular(borderRadius),
              bottomLeft: Radius.circular(borderRadius),
            )),
      ),
    );
  }
}
