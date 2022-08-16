import 'package:chat_app/utils/spaces.dart';
import 'package:chat_app/widgets/login_text_field.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  void loginUser(context) {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      // print(userNameController.text);
      // print(passwordController.text);

      Navigator.pushReplacementNamed(context, '/chat',
          arguments: userNameController.text);
      // print('login successful');
    } else {
      // print('Login failed');
    }
  }

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  static const _mainUrl = 'https://www.huijbregts-bouw.nl';

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
              const Text(
                'Let\'s sign you in',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.8),
              ),
              const Text(
                'Welcome back!\nYou\'ve been missed...',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.8),
              ),
              verticalSpacing(10.0),
              Image.asset(
                'assets/illustration.png',
                height: 100.0,
              ),
              verticalSpacing(24.0),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    LoginTextField(
                      controller: userNameController,
                      hintText: 'Enter your username',
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
                    ),
                    verticalSpacing(24.0),
                    LoginTextField(
                      controller: passwordController,
                      hintText: 'Enter your password',
                      hasAsterisks: true,
                      validator: (value) {
                        if (value != null &&
                            value.isNotEmpty &&
                            value.length < 6) {
                          return 'Your password should be 6 characters or more!';
                        } else if (value != null && value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              verticalSpacing(10.0),
              ElevatedButton(
                onPressed: () {
                  loginUser(context);
                  userNameController.clear();
                  passwordController.clear();
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              verticalSpacing(24.0),
              GestureDetector(
                onDoubleTap: () {},
                onLongPress: () {},
                onTap: () async {
                  // ignore: deprecated_member_use
                  if (!await launch(_mainUrl)) {
                    throw 'Could not launch URL';
                  }
                  // to do open browser to URL
                },
                child: Column(
                  children: const [
                    Text(
                      'Find us on',
                      style: TextStyle(fontSize: 25.0),
                    ),
                    Text(
                      _mainUrl,
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
