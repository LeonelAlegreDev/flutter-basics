import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget{
  final int counter;
  final int goal;

  const CounterDisplay({
    super.key,
    required this.counter,
    required this.goal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '$counter',
      style: TextStyle(
        fontSize: 60,
        fontWeight: FontWeight.bold,
        color: counter >= goal ? const Color.fromARGB(255, 32, 0, 175) : const Color.fromARGB(255, 2, 61, 0),
      ),
    );
  }
}