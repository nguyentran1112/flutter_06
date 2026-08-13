import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(home: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login'), centerTitle: true),
      body: Center(
        child: Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blueAccent,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(190.0),
            child: Image.asset(
              height: 200,
              width: 200,
              fit: BoxFit.cover,
              './assets/images/8_3_cover_mail.webp',
              errorBuilder: (context, trace, error) {
                return Center(
                  child: Text(
                    'Hinh anh bi loi',
                    style: TextStyle(fontSize: 24),
                  ),
                );
              },
            ),
          ),
        ),
      ),
      bottomNavigationBar: Text('Bottom Nav'),
      floatingActionButton: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
    );
  }
}

class MyWidget extends StatelessWidget {
  final String myPhoneNumber;
  const MyWidget({super.key, required this.myPhoneNumber});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          textAlign: TextAlign.end,
          maxLines: 5,
          myPhoneNumber,
          style: TextStyle(
            fontFamily: 'Nguyen',
            decoration: TextDecoration.lineThrough,
          ),
        ),
        RichText(
          text: TextSpan(
            text: 'Xin chao mn ',
            children: [
              TextSpan(
                text: 'LINK',
                style: TextStyle(color: Colors.red),
              ),
              TextSpan(
                text: ' MAUXANH',
                style: TextStyle(color: Colors.blue),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
