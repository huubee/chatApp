import 'package:chat_app/chat_page.dart';
import 'package:chat_app/login_page.dart';
import 'package:chat_app/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// This notation is called 'expression body'. It can be converted to a 'block body'
// The 'expression body' is better readable
void main() {
  runApp(
    Provider(
      create: (BuildContext context) => AuthService(),
      child: const ChatApp(),
    ),
  );
}

// This notation is called 'expression body'. It can be converted to a 'block body' like above
// void main() {
//   runApp(Provider(create: (BuildContext context) {
//     return AuthService();
//   },
//       child: const ChatApp()));
// }

class ChatApp extends StatelessWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.black45,
        ),
      ),
      home: LoginPage(),
      routes: {
        '/chat': (context) => ChatPage(),
      },
    );
  }
}
