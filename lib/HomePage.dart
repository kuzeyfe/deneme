import 'package:deneme/Bilgilerim.dart';
import 'package:flutter/material.dart';
import 'RegisterPage.dart';
import 'Login.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Deneme Uygulaması'),
      ),
      body: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 5, 5, 5),
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // İlk butonun işlevselliği buraya yazılabilir
                  },
                  child: Text('Anasayfa'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // İkinci butonun işlevselliği buraya yazılabilir
                  },
                  child: Text('Buton 2'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
);
                  },
                  child: Text('Giriş Yap'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
  );
                  },
                  child: Text('Kayıt Ol'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => MyInfoPage(),
                    ),
    );
                  },
                  child: Text('İletişim'),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
             Text( 'Hoşgeldiniz', style: TextStyle(fontSize: 24),),
             SizedBox(height: 16),
             Image.asset(
             'images/3.png', 
              fit: BoxFit.contain,
              ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
