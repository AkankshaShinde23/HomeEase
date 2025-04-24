import 'package:flutter/material.dart';
import 'home.dart'; // Import your HomePage
import 'start.dart'; // Import your StartPage

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;  // Toggle state

  void toggleAuthMode() {
    setState(() {
      isLogin = !isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(isLogin ? "Login" : "Sign Up")),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Email"),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            if (!isLogin)  // Show only in Sign Up mode
              TextField(
                decoration: InputDecoration(labelText: "Confirm Password"),
                obscureText: true,
              ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // After successful login/signup, navigate to StartPage
                Navigator.pushReplacementNamed(context, '/start');
              },
              child: Text(isLogin ? "Login" : "Sign Up"),
            ),
            TextButton(
              onPressed: toggleAuthMode,
              child: Text(isLogin
                  ? "Don't have an account? Sign Up"
                  : "Already have an account? Login"),
            ),
          ],
        ),
      ),
    );
  }
}