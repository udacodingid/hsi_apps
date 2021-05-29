import 'package:flutter/material.dart';

class PageHomeScreen extends StatefulWidget {
  String nip;
  String password;
  PageHomeScreen({required this.nip, required this.password});

  @override
  _PageHomeScreenState createState() => _PageHomeScreenState();
}

class _PageHomeScreenState extends State<PageHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Home Screen'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            Text('Selamat Datang di MAHAZI - by HSI'),
            SizedBox(height: 40,),
            Text('NIP Anda : ' + widget.nip),
            SizedBox(height: 10,),
            Text('Password Anda : ${widget.password}')
          ],

        ),
      ),
    );
  }
}
