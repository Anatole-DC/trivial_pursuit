import 'package:flutter/material.dart';

class DailyQuizzGamePage extends StatefulWidget {
  const DailyQuizzGamePage({super.key});

  @override
  State<DailyQuizzGamePage> createState() => _DailyQuizzGamePageState();
}

class _DailyQuizzGamePageState extends State<DailyQuizzGamePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Text("Daily Quizz")),
    );
  }
}
