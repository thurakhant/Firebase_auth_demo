import 'package:brew_crew/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0,
        title: const Text('Join Potato Brew Crew'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: TextButton(
            onPressed: () async {
             dynamic result = await _auth.signAnon();
             if (result == null) {
               print('error sign in');
             } else {
               print('signed in');
               print(result);
             }
            }, child: const Text('Sigin in Anonymous')),
      ),
    );
  }
}
