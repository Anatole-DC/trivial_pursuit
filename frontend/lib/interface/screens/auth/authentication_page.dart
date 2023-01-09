import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';
import 'package:trivial_pursuit/data/controller/authentication_controller.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  String? errorMessage = '';

  bool isLoggedIn = true;

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerUsername = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  void redirect() {
    GoRouter.of(context).go("/");
  }

  Future<void> signInWithEmailAndPassword() async {
    if (AuthenticationController.getInstance().isLoggedIn()) {
      redirect();
    }
    try {
      await AuthenticationController.getInstance()
          .login(_controllerEmail.text, _controllerPassword.text);
      redirect();
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await AuthenticationController.getInstance().registerNewUser(
          _controllerEmail.text,
          _controllerUsername.text,
          _controllerPassword.text);
      redirect();
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Widget _entryField(String title, TextEditingController controller) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.black, width: 2.5),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: TextField(
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
        onPressed: isLoggedIn
            ? signInWithEmailAndPassword
            : createUserWithEmailAndPassword,
        style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
        child: Text(
          isLoggedIn ? 'Login' : 'Register',
        ));
  }

  Widget _loginOrRegisterButton() {
    return TextButton(
        onPressed: () {
          setState(() {
            isLoggedIn = !isLoggedIn;
          });
        },
        child: Text(
          isLoggedIn ? 'Register instead' : 'Login instead',
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

    if (!isLoggedIn) {
      fields.add(const SizedBox(
        height: 10,
      ));
      fields.add(_entryField('username', _controllerUsername));
    }

    fields.add(const SizedBox(
      height: 10,
    ));
    fields.add(_entryField('password', _controllerPassword));

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
