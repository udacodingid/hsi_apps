import 'package:flutter/material.dart';
import 'package:hsi_sharing/screen/home_screen.dart';

class PageLogin extends StatefulWidget {
  @override
  _PageLoginState createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {

  TextEditingController txtNip = new TextEditingController();
  TextEditingController txtPassword = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Mahazi Apps'),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Image.asset(
            'gambar/logo_mahazi.jpg',
            width: 200,
            height: 200,
          ),
          SizedBox(
            height: 30,
          ),
          Center(
              child: Text(
            'Login Mahazi Apps',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
          )),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(40, 5, 40, 5),
            child: TextFormField(
              controller: txtNip,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'NIP',
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.fromLTRB(40, 5, 40, 5),
            child: TextFormField(
              controller: txtPassword,
              keyboardType: TextInputType.number,
              obscureText: true, // hide jadi bulat
              decoration: InputDecoration(
                hintText: 'Passowrd',
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.fromLTRB(40, 5, 40, 5),
            child: MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: (){
                setState(() {

                  String nNip,  nPassword;
                  nNip = txtNip.text;
                  nPassword = txtPassword.text;

                  if((nNip.isEmpty) && (nPassword.isEmpty)){
                    print('nip atau password tidak boleh kosong');
                  }else if((nNip == "rizki") && (nPassword == "123123")){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PageHomeScreen(nip: nNip, password: nPassword)));
                  }else{
                    print("Nip atau password salah!");
                  }

                });

              },
              child: Text('Login'),
            ),
          ),

          Container(
            padding: const EdgeInsets.fromLTRB(40, 5, 40, 5),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Lupa Password ?', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w200),),
                  SizedBox(width: 5,),
                  Text('Atau'),
                  SizedBox(width: 5,),
                  Text('Lupa NIP ?', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w200),),                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
