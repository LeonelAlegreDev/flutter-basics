import 'package:flutter/material.dart';

import '../widgets/action_button.dart';
import '../widgets/counter_display.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen>{
  int _counter = 0;
  static const int _goal = 10;

  final Color _defaultBackgroundColor = const Color.fromARGB(255, 45, 255, 157);
  final Color _goalBackgroundColor = const Color.fromARGB(255, 255, 95, 95);

  Color get _backgroundColor => 
    _counter >= _goal ? _goalBackgroundColor : _defaultBackgroundColor;
  
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    if(_counter >= _goal) {
      _showGoalMessage();
    }
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  void _showGoalMessage() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('¡Felicidades! Has alcanzado la meta de $_goal clics.'),
        duration: const Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Color.fromARGB(255, 117, 117, 117),
      ),
    );  // ScaffoldMessenger 
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador de Clics'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 141, 158, 255),
      ),
      backgroundColor: _backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CounterDisplay(counter: _counter, goal: _goal),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ActionButton(
                text: 'Incrementar',
                backgroundColor: Colors.indigo,
                onPressed: _incrementCounter,
              ),
              const SizedBox(width: 24),
              ActionButton(
                text: 'Reiniciar',
                backgroundColor: Colors.redAccent,
                onPressed: _resetCounter,
              ),
            ],
          ),
        ],
      ),
    );
  }
}