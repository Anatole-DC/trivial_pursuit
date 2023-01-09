import 'package:flutter/material.dart';

class OnlineGamePage extends StatefulWidget {
  const OnlineGamePage({super.key});

  @override
  State<OnlineGamePage> createState() => _OnlineGamePageState();
}

class _OnlineGamePageState extends State<OnlineGamePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Text("Online Game")),
    );
  }
}
