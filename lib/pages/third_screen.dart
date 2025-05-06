import 'package:flutter/material.dart';
import 'package:page_navigation/pages/first_page.dart';
import 'package:page_navigation/pages/second_page.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
    child: Scaffold(
      appBar: AppBar(title: Text('Third Screen'), centerTitle: true),
      body: Container(
        color: Colors.yellow,
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20)),
            child: Text('Last Screen', style: TextStyle(fontSize: 20)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirstScreen()),
              );
            },
          ),
        ),
      ),
    ),
  );
}
