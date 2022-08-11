import 'package:flutter/material.dart';

class CounterStateful extends StatefulWidget {
  const CounterStateful({Key? key}) : super(key: key);

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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
              child: Icon(Icons.restart_alt),
              onPressed: () {
                resetCounter();
              }),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              incrementCounter();
            },
          ),
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
