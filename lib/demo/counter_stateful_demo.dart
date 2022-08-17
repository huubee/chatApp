import 'package:flutter/material.dart';

class CounterStateful extends StatefulWidget {

  final Color buttonColor;

  const CounterStateful({Key? key, required this.buttonColor}) : super(key: key);

  @override
  State<CounterStateful> createState() => _CounterStatefulState();
}

class _CounterStatefulState extends State<CounterStateful> {

  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
    print(counter);
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
