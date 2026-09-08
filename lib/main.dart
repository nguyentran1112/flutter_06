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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('CustomView'),
            backgroundColor: Colors.green,
            floating: true,
            toolbarHeight: 46,
            expandedHeight: 64,
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          fit: BoxFit.cover,
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSILQO2_C3m2tF0Y7oy-t3hHRRjw8-arIazjuwOlCWx5w&s',
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Text(
                          'Nguyen',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 8),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      fit: BoxFit.cover,
                      width: 80,
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSILQO2_C3m2tF0Y7oy-t3hHRRjw8-arIazjuwOlCWx5w&s',
                    ),
                  ),
                  SizedBox(width: 8),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      fit: BoxFit.cover,
                      width: 80,
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSILQO2_C3m2tF0Y7oy-t3hHRRjw8-arIazjuwOlCWx5w&s',
                    ),
                  ),
                  SizedBox(width: 8),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      fit: BoxFit.cover,
                      width: 80,
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSILQO2_C3m2tF0Y7oy-t3hHRRjw8-arIazjuwOlCWx5w&s',
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text('Friends Online'),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSILQO2_C3m2tF0Y7oy-t3hHRRjw8-arIazjuwOlCWx5w&s',
                  ),
                ),
                title: Text('Nguyen'),
                subtitle: Text('2001'),
                trailing: Icon(Icons.people),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSILQO2_C3m2tF0Y7oy-t3hHRRjw8-arIazjuwOlCWx5w&s',
                  ),
                ),
                title: Text('Nguyen'),
                subtitle: Text('2001'),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSILQO2_C3m2tF0Y7oy-t3hHRRjw8-arIazjuwOlCWx5w&s',
                  ),
                ),
                title: Text('Nguyen'),
                subtitle: Text('2001'),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSILQO2_C3m2tF0Y7oy-t3hHRRjw8-arIazjuwOlCWx5w&s',
                  ),
                ),
                title: Text('Nguyen'),
                subtitle: Text('2001'),
              ),
            ]),
          ),
          SliverGrid(
            delegate: SliverChildListDelegate([
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  fit: BoxFit.cover,
                  width: 80,
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSILQO2_C3m2tF0Y7oy-t3hHRRjw8-arIazjuwOlCWx5w&s',
                ),
              ),
              SizedBox(width: 8),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  fit: BoxFit.cover,
                  width: 80,
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSILQO2_C3m2tF0Y7oy-t3hHRRjw8-arIazjuwOlCWx5w&s',
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  fit: BoxFit.cover,
                  width: 80,
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSILQO2_C3m2tF0Y7oy-t3hHRRjw8-arIazjuwOlCWx5w&s',
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  fit: BoxFit.cover,
                  width: 80,
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSILQO2_C3m2tF0Y7oy-t3hHRRjw8-arIazjuwOlCWx5w&s',
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  fit: BoxFit.cover,
                  width: 80,
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSILQO2_C3m2tF0Y7oy-t3hHRRjw8-arIazjuwOlCWx5w&s',
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  fit: BoxFit.cover,
                  width: 80,
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSILQO2_C3m2tF0Y7oy-t3hHRRjw8-arIazjuwOlCWx5w&s',
                ),
              ),
            ]),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
          ),
        ],
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
