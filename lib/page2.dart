import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Page 2'),

      ),

      body: Center(
        child: Text(
            'Ini Page Kedua'
        ),
      ),
    );
  }
}
