import 'package:chat_app/models/chat_message_entity.dart';
import 'package:chat_app/widgets/chat_bubble.dart';
import 'package:chat_app/widgets/chat_input.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Center(
          child: Text('Hello $username'),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.popAndPushNamed(
                  context,
                  '/',
                ); //Navigator.pushReplacementNamed(context, '/'); can also be used
                print('Logout icon pressed!');
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ChatBubble(
                      alignment: index % 2 == 0
                          ? Alignment.centerLeft
                          : Alignment.centerRight,
                      entity: ChatMessageEntity(
                        id: '1234',
                        text: 'Hello, How are you today?',
                        createdAt: DateTime.now().millisecondsSinceEpoch,
                        author: Author(userName: 'hubert'),
                      ));
                }),
          ),
          ChatInput(),
        ],
      ),
    );
  }
}
