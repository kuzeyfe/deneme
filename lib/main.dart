import 'package:flutter/material.dart';
import 'HomePage.dart'; // Yeni dosyamızı ekliyoruz
import 'Bilgilerim.dart';
import 'RegisterPage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Uygulaması',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(), // Ana sayfayı HomePage sınıfına ayarlıyoruz
    );
  }
}
