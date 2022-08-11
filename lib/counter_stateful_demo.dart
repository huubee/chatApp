import 'package:flutter/material.dart';

class CounterStateful extends StatefulWidget {
  final Color buttonColor;

  const CounterStateful({Key? key, required this.buttonColor}) : super(key: key);

  @override
  State<CounterStateful> createState() => _CounterStatefulState();
}

class _CounterStatefulState extends State<CounterStateful> {
  int counter = 0;

  void incrementCounter() {
    // This makes sure to not perform setState on an 'unmounted' state to avoid real-time crashes
    if (mounted) {
      setState(
            () {
          counter++;
        },
      );
      print(counter);
    }
  }

  void decrementCounter() {
    if (mounted) {
      setState(() {
        counter--;
      });
      print(counter);
    }
  }

  void resetCounter() {
    if (mounted) {
      setState(
            () {
          counter = 0;
        },
      );
      print(counter);
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
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
