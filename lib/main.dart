import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> users = [
      {
        'name': 'Nguyen Van A',
        'email': 'nguyenvan@gmail.com',
        'phoneNumber': '0815222263',
      },
      {
        'name': 'Nguyen Van B',
        'email': 'nguyenvan@gmail.com',
        'phoneNumber': '0815222233',
      },
      {
        'name': 'Nguyen Van C',
        'email': 'nguyenvan@gmail.com',
        'phoneNumber': '0815212233',
      },
    ];
    return Scaffold(
      appBar: AppBar(title: Text('Login'), centerTitle: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
            itemCount: users.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3ienSG-CR_Y-lpTEnCmlTTKFGI6rTSCs03G-kb3mV6w&s=10',
                  ),
                ),
                title: Text(users[index]['name']),
                subtitle: Text(
                  '${users[index]['email']} | ${users[index]['phoneNumber']}',
                ),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  print(index.toString());
                },
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(height: 6);
            },
          ),
        ),
      ),
      bottomNavigationBar: Text('Bottom Nav'),
      floatingActionButton: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
    );
  }

  Widget _buildItem({
    required String name,
    required String desc,
    required IconData icon,
  }) {
    return Column(
      children: [Icon(icon), Text(name), SizedBox(height: 10), Text(desc)],
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
