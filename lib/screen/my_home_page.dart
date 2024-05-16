import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCount() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My increment counter',
            style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: _incrementCounter,
            child: const Text('เพิ่ม'),
          ),
          Text(
            'นับไปแล้ว $_counter ครั้ง',
            style: const TextStyle(fontSize: 50),
          ),
          ElevatedButton(
            onPressed: _decrementCount,
            child: const Text('ลด'),
          )
        ]),
      ),
    );
  }
}
