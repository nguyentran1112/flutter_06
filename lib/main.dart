import 'package:flutter/material.dart';
import 'package:my_app_name/screens/notification_screen.dart';
import 'package:my_app_name/screens/profile_screen.dart';

// debug release profile
void main() {
  runApp(
    MaterialApp(
      home: const MainApp(),
      routes: {
        '/notification-screen': (context) => NotificationScreen(),
        '/profile-screen': (context) => ProfileScreen(),
      },

      debugShowCheckedModeBanner: false,
    ),
  );
}

enum SingingCharacter { MyTam, SonTung, ChiPu }

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool isChecked = false;
  bool isTurnOn = false;
  final _formKey = GlobalKey<FormState>();
  bool isHide = true;
  TextEditingController _userController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  List<String> titles = ['DOG', 'CAT'];
  String valueFromChild = '';
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: TextStyle(color: Colors.white),
        toolbarHeight: 56,
        centerTitle: false,
        elevation: 4,
        title: Text('AppBar ne'),
        backgroundColor: Colors.greenAccent,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ],
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _userController,
                autovalidateMode: AutovalidateMode.onUnfocus,
                validator: (value) {
                  if (value!.length < 5) {
                    return 'Username phải từ 5 ký tự trở lại';
                  }
                  return null;
                },
                onChanged: (value) {
                  print(value);
                },
                style: TextStyle(color: Colors.red),
                decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'Vui lòng nhập username',
                  prefixIcon: Icon(Icons.person),
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
              TextFormField(
                autovalidateMode: AutovalidateMode.onUnfocus,
                validator: (input) =>
                    input!.isValidEmail() ? null : "Check your email",

                onChanged: (value) {
                  print(value);
                },
                style: TextStyle(color: Colors.red),
                decoration: InputDecoration(
                  labelText: 'email',
                  hintText: 'Vui lòng nhập email',
                  prefixIcon: Icon(Icons.person),
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
              TextFormField(
                controller: _passController,
                obscureText: isHide,
                autovalidateMode: AutovalidateMode.onUnfocus,
                validator: (value) {
                  if (value!.length < 8)
                    return 'Độ dài mật khẩu phải từ 8 ký tự';
                  return null;
                },
                onChanged: (value) {
                  print(value);
                },
                style: TextStyle(color: Colors.red),
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Vui lòng nhập password',
                  prefixIcon: Icon(Icons.person),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isHide = !isHide;
                      });
                    },
                    icon: Icon(
                      !isHide ? Icons.visibility_off : Icons.visibility,
                    ),
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
                  DropdownMenuItem(child: Text('Nữ'), value: 'Nu'),
                ],
                onChanged: (value) {
                  print(value);
                },
                validator: (val) =>
                    val != null ? null : 'Vui lòng chọn giới tính',
              ),
              CheckboxListTile(
                title: Text('Đồng ý với điều khoản sử dụng!'),
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                  print(value);
                },
              ),
              Text(
                'username : ${_userController.text} password: ${_passController.text}',
              ),
              ElevatedButton(
                onPressed: () {
                  if (isChecked) {
                    _formKey.currentState?.validate();
                    setState(() {});
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Vui lòng đồng ý với điều khoản sử dụng!',
                        ),
                      ),
                    );
                  }
                },
                child: Text('Register'),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () async {
                  var result = await Navigator.of(context).pushNamed(
                    '/profile-screen',
                    arguments: _userController.text,
                  );
                  print(result);
                  setState(() {
                    valueFromChild = result.toString();
                  });
                },
                child: Text('Dieu huong sang Profile ${valueFromChild}'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    ).hasMatch(this);
  }
}
