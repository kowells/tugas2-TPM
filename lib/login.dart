import 'package:flutter/material.dart';
import 'package:tugas2/menu.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var usernameController = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Login Page',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            TextField(
              controller : usernameController,
              decoration: InputDecoration(
                hintText: 'Username',
                border: OutlineInputBorder(),

              ),
            ),
            SizedBox(height: 10),
            TextField(
              obscureText: true,
              controller : passwordController,
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (usernameController.text == 'admin' &&
                    passwordController.text == 'admin') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MenuPage()),
                  );
                } else {
                  print('Login Failed!!!');
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}