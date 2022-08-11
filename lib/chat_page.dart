import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _borderRadius = 12.0;
    double _textPadding = 12.0;
    double _containerWidth = 200.0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Center(
          child: Text('Hello ...'),
        ),
        actions: [
          IconButton(
              onPressed: () {
                print('Logout icon pressed!');
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: _containerWidth,
              child: Padding(
                padding: EdgeInsets.all(_textPadding),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Hi, this is your message.',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: _textPadding),
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
                    topLeft: Radius.circular(_borderRadius),
                    topRight: Radius.circular(_borderRadius),
                    bottomLeft: Radius.circular(_borderRadius),
                  )),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: _containerWidth,
              child: Padding(
                padding: EdgeInsets.all(_textPadding),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Hi, this is your 2nd message.',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: _textPadding),
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
                    topLeft: Radius.circular(_borderRadius),
                    topRight: Radius.circular(_borderRadius),
                    bottomLeft: Radius.circular(_borderRadius),
                  )),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: _containerWidth,
              child: Padding(
                padding: EdgeInsets.all(_textPadding),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Hi, this is your 3rd message.',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: _textPadding),
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
                    topLeft: Radius.circular(_borderRadius),
                    topRight: Radius.circular(_borderRadius),
                    bottomLeft: Radius.circular(_borderRadius),
                  )),
            ),
          ),
          Container(
            height: 100.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(_borderRadius),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
