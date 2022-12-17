import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:proyecto_test_1/screens/lite_dex.dart';
import 'authenticator.dart';
import 'counter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              onPressed: () async {
                await FirebaseServices().signInWithGoogle();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const LiteDex()));
              },
              color: Colors.blue,
              child: Icon(Icons.play_arrow),
              textColor: Colors.white,
            ),
            SizedBox(height: 20),
            MaterialButton(
              onPressed: () async {
                await FirebaseServices().signOut();
              },
              color: Colors.red,
              child: Text("Cerrar sesión"),
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
