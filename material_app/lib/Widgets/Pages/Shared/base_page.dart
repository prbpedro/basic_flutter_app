import 'package:flutter/material.dart';

abstract class BasePage extends StatelessWidget {

  final String text;

  BasePage(this.text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(text),
        centerTitle: true,
      ),
      body: body(context),
    );
  }

  body(context);
}