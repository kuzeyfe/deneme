import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Giriş Yap'),
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
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                String username = usernameController.text;
                String password = passwordController.text;

                loginUser(username, password);
              },
              child: Text('Giriş Yap'),
            ),
          ],
        ),
      ),
    );
  }

  void loginUser(String username, String password) {
    // TODO: Kullanıcı giriş işlemini burada gerçekleştirin
    // Örneğin, bir kullanıcı veritabanıyla doğrulama yapabilirsiniz

    // Giriş işlemi başarılıysa ana sayfaya yönlendirin
    Navigator.pushReplacementNamed(context, '/home');
  }
}
