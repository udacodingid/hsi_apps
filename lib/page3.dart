import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Page 3'),

      ),

      body: Center(
        child: Text(
            'Ini Page Ketiga'
        ),
      ),
    );
  }
}
