import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var username = ModalRoute.of(context)?.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: TextStyle(color: Colors.white),
        toolbarHeight: 56,
        centerTitle: false,
        elevation: 4,
        title: Text('ProfileScreen'),
        backgroundColor: Colors.greenAccent,

        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop('GiaTriMoi');
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Center(child: Text(username.toString())),
    );
  }
}
