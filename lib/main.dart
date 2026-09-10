import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: const MainApp()));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int color = 0;
  Timer? _timer;
  int _counter = 0;

  MaterialColor getColors() {
    if (color == 0) return Colors.green;
    if (color == 1) return Colors.red;
    return Colors.yellow;
  }

  @override
  void initState() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _counter++; // Updates the UI every second
        if (_counter == 20) {
          _counter = 0;
          color++;
          if (color > 2) {
            color = 0;
          }
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(_counter.toString(), style: TextStyle(fontSize: 34)),
          Container(width: 150, height: 150, color: getColors()),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  color = 0;
                  setState(() {});
                },
                child: Container(width: 60, height: 60, color: Colors.green),
              ),
              SizedBox(width: 8),
              InkWell(
                onTap: () {
                  color = 1;
                  setState(() {});
                },
                child: Container(width: 60, height: 60, color: Colors.red),
              ),
              SizedBox(width: 8),
              InkWell(
                onTap: () {
                  color = 2;
                  setState(() {});
                },
                child: Container(width: 60, height: 60, color: Colors.yellow),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
