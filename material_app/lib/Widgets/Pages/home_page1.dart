
import 'package:flutter/material.dart';
import 'package:materialapp/Widgets/Pages/Shared/base_page.dart';

class HomePage1 extends BasePage {
  HomePage1() : super('List View');

  @override
  body(context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Teste'),
        ],
      ),
    );
  }
}