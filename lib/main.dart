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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 500,
            height: 300,
            child: Card(
              color: Colors.amber,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Banh kem',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            'Banh kem la mon an rat ngon. Duoc moi nguoi dung trong nhung dip quan trong',
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.star),
                                  Icon(Icons.star),
                                  Icon(Icons.star),
                                  Icon(Icons.star),
                                  Icon(Icons.star),
                                ],
                              ),
                              Text('137 Reviews'),
                            ],
                          ),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              _buildItem(
                                name: 'Tu lanh',
                                desc: '35M',
                                icon: Icons.fax,
                              ),
                              _buildItem(
                                name: 'TV',
                                desc: '3M',
                                icon: Icons.tablet_android,
                              ),
                              _buildItem(
                                name: 'tiktok',
                                desc: '3M',
                                icon: Icons.tiktok,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3ienSG-CR_Y-lpTEnCmlTTKFGI6rTSCs03G-kb3mV6w&s=10',
                    ),
                  ],
                ),
              ),
            ),
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
