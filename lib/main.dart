import 'package:flutter/material.dart';
import 'page2.dart';
import 'page3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: PageHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//class
//1 file --> bisa beberapa class
//class : stateless & statefull
//less : dikit, --> digunakan untuk view
//statefull -->
//nampilin gambar dan teks :
//widget & property
// widget : huruf besar
// properti : huruf kecil
// AppBar : widget
// appBar  : properti
//child : children
//child : menampung 1 widget :text, container,
//children : banyak widget (row, column, list)
//yang bisa d klik : button
//teks bisa d klik : inkwell

class PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('HSI Apps'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40,),
            Image.asset('gambar/logo_hsi.png', height: 200, width: 200,),
            SizedBox(height: 20,),
            Text(
              'Ahlan Wa Sahlan di HSI Apps',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            SizedBox(height: 10,),
            MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('Page 1'),
              onPressed: (){
                Navigator.push(context, (MaterialPageRoute(builder : (context) => Page1())));
              },
            ),
            SizedBox(height: 20,),
            MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('Page 2'),
              onPressed: (){
                Navigator.push(context, (MaterialPageRoute(builder : (context) => page2())));
              },
            ),
            SizedBox(height: 20,),
            MaterialButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('Page 3'),
              onPressed: (){
                Navigator.push(context, (MaterialPageRoute(builder : (context) => Page3())));
              },
            ),
          ],

        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Page 1'),

      ),

      body: Center(
        child: Text(
          'Ini Page Pertama'
        ),
      ),
    );
  }
}

