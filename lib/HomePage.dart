import 'package:deneme/Bilgilerim.dart';
import 'package:flutter/material.dart';

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
            color: Colors.blue,
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
                    // Üçüncü butonun işlevselliği buraya yazılabilir
                  },
                  child: Text('Buton 3'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Dördüncü butonun işlevselliği buraya yazılabilir
                  },
                  child: Text('Buton 4'),
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
            child: Center(
              child: Text(
                'Hoşgeldiniz',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
