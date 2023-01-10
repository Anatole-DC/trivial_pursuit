import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:math' as math;

import 'package:trivial_pursuit/interface/screens/game/bloc/game_cubit.dart';

class AnwserButton extends StatefulWidget {
  AnwserButton({super.key, required this.text, this.goodAwnser = false});

  final String text;
  final bool goodAwnser;
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
    final blocContext = context.read<GameCubit>();
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _textColor = Colors.white;
          if (widget.goodAwnser) {
            _backgroundColor = Colors.green;
          } else {
            _backgroundColor = Colors.red;
          }
        });
      },

      onTapUp: (_) {
        setState(() {
          _textColor = Colors.black;
          _backgroundColor = Colors.transparent;
          blocContext.questionClicked(widget.goodAwnser);
        });
      },

      // The UI of the button
      // A random rotation is applied to the widget ('cause i'm a deziner)
      child: Transform.rotate(
        angle: widget.getRandomNumber(),
        // The actual awnser button
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10.0),
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
