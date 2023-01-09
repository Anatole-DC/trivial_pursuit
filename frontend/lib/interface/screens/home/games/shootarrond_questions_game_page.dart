import 'package:flutter/material.dart';

class ShootarroundQuestionsGamePage extends StatefulWidget {
  const ShootarroundQuestionsGamePage({super.key});

  @override
  State<ShootarroundQuestionsGamePage> createState() =>
      _ShootarroundQuestionsGamePageState();
}

class _ShootarroundQuestionsGamePageState
    extends State<ShootarroundQuestionsGamePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Text("Shootarround Questions")),
    );
  }
}
