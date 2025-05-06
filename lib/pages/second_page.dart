import 'package:flutter/material.dart';
import 'package:page_navigation/pages/first_page.dart';
import 'package:page_navigation/pages/third_screen.dart';

class SecondScreen extends StatelessWidget {
  final String name;
  final String age;

  const SecondScreen({Key? key, required this.name, required this.age})
    : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
    child: Scaffold(
      appBar: AppBar(title: Text('Second Screen'), centerTitle: true),
      body: Container(
        color: Colors.red,
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20)),
            child: Text('Last Screen', style: TextStyle(fontSize: 20)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ThirdScreen()),
              );
            },
          ),
        ),
      ),
    ),
  );
}
