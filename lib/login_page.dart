import 'package:chat_app/chat_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  void loginUser(context) {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      print(userNameController.text);
      print(passwordController.text);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ChatPage(
            username: userNameController.text,
          ),
        ),
      );
      print('login successful');
    } else {
      print('Login failed');
    }
  }

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

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
              // Image.network(
              //   'https://static.scientificamerican.com/sciam/cache/file/4F73FD83-3377-42FC-915AD56BD66159FE_source.jpg',
              //   width: 200,
              // ),
              SizedBox(
                height: 20.0,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value != null &&
                            value.isNotEmpty &&
                            value.length < 6) {
                          return 'Your username should be 6 characters or more!';
                        } else if (value != null && value.isEmpty) {
                          return 'Please enter your username';
                        }
                        return null;
                      },
                      controller: userNameController,
                      decoration: InputDecoration(
                        hintText: 'Enter your username',
                        hintStyle:
                            TextStyle(fontSize: 18.0, color: Colors.grey),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        hintStyle:
                            TextStyle(fontSize: 18.0, color: Colors.grey),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  loginUser(context);
                  // userNameController.clear();
                  // passwordController.clear();
                },
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w300),
                ),
              ),
              GestureDetector(
                onDoubleTap: () {
                  print('double tapped');
                },
                onLongPress: () {
                  print('onlongpress');
                },
                onTap: () {
                  // to do open browser to URL
                  print('textarea clicked!');
                },
                child: Column(
                  children: [
                    Text(
                      'Find us on',
                      style: TextStyle(fontSize: 25.0),
                    ),
                    Text(
                      'https://www.huijbregts-bouw.nl',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
