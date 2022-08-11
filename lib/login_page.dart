import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  void loginUser() {
    print('login successful');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Let\'s sign you in',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.8),
              ),
              Text(
                'Welcome back!\nYou\'ve been missed...',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.8),
              ),
              Image.network(
                'https://static.scientificamerican.com/sciam/cache/file/4F73FD83-3377-42FC-915AD56BD66159FE_source.jpg',
                width: 200,
              ),

              ElevatedButton(
                onPressed: loginUser,
                child: Text('Click Me!', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w300),),
              ),
              TextButton(
                onPressed: () {
                  print('Clicked on URL');
                },
                child: Text('https://www.huijbregts-bouw.nl'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
