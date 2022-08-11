import 'package:flutter/material.dart';

class CounterStateful extends StatefulWidget {
  final Color buttonColor;

  const CounterStateful({Key? key, required this.buttonColor}) : super(key: key);

  @override
  State<CounterStateful> createState() {
    State<CounterStateful> stateClassAssociatedWithThisWidget =
        _CounterStatefulState();
    return stateClassAssociatedWithThisWidget;
  }
}

class _CounterStatefulState extends State<CounterStateful> {
  int counter = 0;

  void incrementCounter() {
    setState(
      () {
        counter++;
      },
    );
    print(counter);
  }

  void decrementCounter() {
    setState(() {
      counter--;
    });
    print(counter);
  }

  void resetCounter() {
    setState(
      () {
        counter = 0;
      },
    );
    print(counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            backgroundColor: widget.buttonColor,
              child: Icon(Icons.restart_alt),
              onPressed: () {
                resetCounter();
              }),
          FloatingActionButton(
            backgroundColor: widget.buttonColor,
            child: Icon(Icons.add),
            onPressed: () {
              incrementCounter();
            },
          ),
          FloatingActionButton(
            backgroundColor: widget.buttonColor,
            child: Icon(Icons.remove),onPressed: () {
            decrementCounter();
          },),
        ],
      ),
      body: Center(
        child: Text(
          '$counter',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
