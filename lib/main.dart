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
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              maxLines: 5,
              keyboardType: TextInputType.number,
              autovalidateMode: AutovalidateMode.onUnfocus,
              validator: (value) {
                if (value!.length < 5) return 'Khong dc nho hon 5';
                return null;
              },
              onChanged: (value) {
                print(value);
              },
              style: TextStyle(color: Colors.red),
              decoration: InputDecoration(
                labelText: 'Username',
                hintText: 'Vui long nhap username',
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(Icons.access_alarm),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.pinkAccent),
                ),
              ),
            ),
            SizedBox(height: 16),
            DropdownButtonFormField(
              autovalidateMode: AutovalidateMode.onUnfocus,
              decoration: InputDecoration(border: OutlineInputBorder()),
              items: [
                DropdownMenuItem(child: Text('Nam'), value: 'Nam'),
                DropdownMenuItem(child: Text('Nu'), value: 'Nu'),
              ],
              onChanged: (value) {
                print(value);
              },
              validator: (val) =>
                  val != null ? null : 'Vui long chon gioi tinh',
            ),
          ],
        ),
      ),
    );
  }
}
