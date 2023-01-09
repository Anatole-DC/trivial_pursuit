import 'package:flutter/material.dart';

class WorkInProgress extends StatelessWidget {
  const WorkInProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
      Icon(
        Icons.construction,
        size: 20,
      ),
      Text("Not Implemented yet...")
    ]);
  }
}
