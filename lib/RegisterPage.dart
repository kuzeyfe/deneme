import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kayıt Ol'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: 'Kullanıcı Adı',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Şifre',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'E-posta',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                String username = usernameController.text;
                String password = passwordController.text;
                String email = emailController.text;

              },
              child: Text('Kayıt Ol'),
            ),
          ],
        ),
      ),
    );
  }

  void registerUser(String username, String password, String email, String phoneNumber) {
    // Kullanıcı adı, şifre, e-posta ve telefon numarası bilgilerini kullanarak kayıt işlemini gerçekleştirin
    // Bu aşamada, kullanıcının bilgilerini veritabanına kaydedebilir veya başka bir işlem yapabilirsiniz

    // Kayıt işlemi tamamlandıktan sonra kullanıcıya bir geri bildirim verebilirsiniz
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Kayıt Tamamlandı'),
          content: Text('Kayıt işlemi başarıyla tamamlandı.'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Tamam'),
            ),
          ],
        );
      },
    );
  }
}
