import 'package:flutter/material.dart';

class PrivateGamePage extends StatefulWidget {
  const PrivateGamePage({super.key});

  @override
  State<PrivateGamePage> createState() => _PrivateGamePageState();
}

class _PrivateGamePageState extends State<PrivateGamePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Text("Private Game")),
    );
  }
}
