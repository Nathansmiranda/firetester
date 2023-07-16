import 'package:firetester/auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Login Page')],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final result = await _auth.signInAnon();
                if (result==null) {
                  print('errorrrr');
                } else {
                  print('signed in');
                  print(result);
                }
              },
              child: const Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}
