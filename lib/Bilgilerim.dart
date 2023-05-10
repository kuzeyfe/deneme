import 'package:flutter/material.dart';

class MyInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bilgilerim'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Mail: kuzeyfee@gmail.com'),
            Text('Numara: 5437379628'),
          ],
        ),
      ),
    );
  }
}
