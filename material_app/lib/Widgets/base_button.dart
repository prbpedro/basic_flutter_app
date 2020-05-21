import 'package:flutter/material.dart';

class BaseButton extends RaisedButton {

  final String text;

  final MaterialColor color;

  final VoidCallback onPressed;

  BaseButton(
    this.text,
    {
      @required this.onPressed,
      this.color = Colors.blue
    }
  );

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: color,
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      onPressed: () => onPressed(),
    );
  }
}