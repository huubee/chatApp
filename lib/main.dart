import 'package:chat_app/chat_page.dart';
import 'package:chat_app/login_page.dart';
import 'package:chat_app/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// This notation is called 'expression body'. It can be converted to a 'block body'
// The 'expression body' is better readable
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // The AuthService.init() method is a Future method so async - await has to be applied
  // Before calling the runApp in the main method best practice is to call WidgetsFlutterBinding.ensureInitialized.
  // Before doing any initialization logic that involves the native code,
  // make sure to have an instance of the WidgetsBinding so flutter can interact with the native code easily.
  // Since SharedPreferences is interacting with native code,
  // make sure to have the instances ready before calling the
  // native platform code for initializing SharedPreferences.
  await AuthService.init();
  runApp(
    ChangeNotifierProvider(
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
        appBarTheme: const AppBarTheme(
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
