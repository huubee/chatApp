import 'package:chat_app/counter_stateful_demo.dart';
//import 'package:chat_app/login_page.dart';
//import 'package:chat_app/chat_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Chat App',
      theme: ThemeData(primarySwatch: Colors.amber),
      //TODO: Create ChatPage() & add appBar, basic ChatBubble &
      home: CounterStateful(buttonColor: Colors.greenAccent,),
    );
  }
}

