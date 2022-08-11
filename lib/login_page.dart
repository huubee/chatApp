import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Let\'s sign you in',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.8),
            ),
            Text(
              'Welcome back!\nYou\'ve been missed...',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.8),
            ),
            Image.network(
              'https://static.scientificamerican.com/sciam/cache/file/4F73FD83-3377-42FC-915AD56BD66159FE_source.jpg',
              width: 200,
            ),
          ],
        ),
      ),
    );
  }
}
