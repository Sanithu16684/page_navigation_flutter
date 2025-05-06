import 'package:flutter/material.dart';
import 'package:page_navigation/pages/second_page.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("First Screen"), centerTitle: true),
        body: Container(
          color: Colors.blue,
          child: Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20)),
              child: Text('Second Screen', style: TextStyle(fontSize: 20)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
