import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:trivial_pursuit/data/database/auth/firebase_authentication.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? errorMessage = '';
  bool isLogin = true;

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerUsername = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(
          email: _controllerEmail.text, password: _controllerPassword.text);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await Auth().createUserWithEmailAndPassword(
          email: _controllerEmail.text,
          username: _controllerUsername.text,
          password: _controllerPassword.text);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Widget _entryField(String title, TextEditingController controller,
      [bool confidential = false]) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.black, width: 2.5),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: TextField(
        obscureText: confidential,
        controller: controller,
        decoration: InputDecoration(
            labelText: title,
            border: InputBorder.none,
            labelStyle: const TextStyle(fontSize: 20)),
      ),
    );
  }

  Widget _errorMessage() {
    return Text(errorMessage == '' ? '' : '$errorMessage');
  }

  Widget _submitButton() {
    return ElevatedButton(
        onPressed: isLogin
            ? signInWithEmailAndPassword
            : createUserWithEmailAndPassword,
        style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
        child: Text(
          isLogin ? 'Login' : 'Register',
        ));
  }

  Widget _loginOrRegisterButton() {
    return TextButton(
        onPressed: () {
          setState(() {
            isLogin = !isLogin;
          });
        },
        child: Text(
          isLogin ? 'Register instead' : 'Login instead',
          style: const TextStyle(color: Colors.black),
        ));
  }

  List<Widget> _fields() {
    List<Widget> fields = [
      const SizedBox(
        height: 10,
      ),
      _entryField('email', _controllerEmail),
    ];

    if (!isLogin) {
      fields.add(const SizedBox(
        height: 10,
      ));
      fields.add(_entryField('username', _controllerUsername));
    }

    fields.add(const SizedBox(
      height: 10,
    ));
    fields.add(_entryField('password', _controllerPassword, true));

    return fields;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Trivial Pursuit Authentication",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              ..._fields(),
              _errorMessage(),
              _submitButton(),
              _loginOrRegisterButton()
            ],
          ),
        ),
      ),
    );
  }
}
