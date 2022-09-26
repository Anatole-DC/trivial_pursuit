import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnwserButton extends StatefulWidget {
  AnwserButton({super.key, required this.text});

  final String text;
  final _random = math.Random();

  double getRandomNumber() {
    return (-5 + _random.nextInt(10)) * math.pi / 180;
  }

  @override
  State<AnwserButton> createState() => _AnwserButtonState();
}

class _AnwserButtonState extends State<AnwserButton> {
  Color _textColor = Colors.black;
  Color _backgroundColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _textColor = Colors.white;
          _backgroundColor = Colors.black;
        });
      },

      onTapUp: (_) {
        setState(() {
          _textColor = Colors.black;
          _backgroundColor = Colors.transparent;
        });
      },

      // The UI of the button
      // A random rotation is applied to the widget ('cause i'm a deziner)
      child: Transform.rotate(
        angle: widget.getRandomNumber(),
        // The actual awnser button
        child: Container(
          // margin: const EdgeInsets.all(15.0),
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 7),
          decoration: BoxDecoration(
              color: _backgroundColor,
              border: Border.all(color: Colors.black, width: 2.5),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: Text(
            widget.text,
            style: TextStyle(
                color: _textColor, fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
