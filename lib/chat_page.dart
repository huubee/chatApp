import 'dart:convert';

import 'package:chat_app/models/chat_message_entity.dart';
import 'package:chat_app/widgets/chat_bubble.dart';
import 'package:chat_app/widgets/chat_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChatPage extends StatelessWidget {
  ChatPage({Key? key}) : super(key: key);

  final List<ChatMessageEntity> _message = [
    ChatMessageEntity(
      text: '1st line',
      id: '001',
      createdAt: 20220817,
      author: Author(userName: 'Hubert'),
    ),
    ChatMessageEntity(
      text: '2nd message',
      id: '002',
      createdAt: 20220817,
      author: Author(userName: 'Therese'),
      imageUrl:
          'https://www.coloriginals.nl/wp-content/uploads/2020/07/Ginnekenstraat1908_Coloriginals-1024x665-1.jpg',
    ),
    ChatMessageEntity(
      text: 'line 3',
      id: '003',
      createdAt: 20220817,
      author: Author(userName: 'Hubert'),
    ),
  ];

  _loadInitialMessages() async {
    final response = await rootBundle.loadString(
      'assets/mock_messages.json',
    );

    final List<dynamic> decodedList = jsonDecode(response) as List;
    // final List<ChatMessageEntity> = ChatMessageEntity.fromJson(json);
    print(decodedList);
  }

  @override
  Widget build(BuildContext context) {
    _loadInitialMessages();
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
                // print('Logout icon pressed!');
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: _message.length,
                itemBuilder: (context, index) {
                  return ChatBubble(
                    alignment: _message[index].author.userName == 'Hubert'
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    entity: _message[index],
                  );
                }),
          ),
          ChatInput(),
        ],
      ),
    );
  }
}
