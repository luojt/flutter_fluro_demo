
import 'package:flutter/material.dart';

class DemoMessageComponent extends StatelessWidget {
  DemoMessageComponent(
      {@required this.message, this.color = const Color(0xFFFFFFFF)});

  final String message;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: this.color,
      child: Center(
        child: Text(
          message,
          style: TextStyle(
            fontFamily: "Lazer84",
          ),
        ),
      ),
    );
  }
}
