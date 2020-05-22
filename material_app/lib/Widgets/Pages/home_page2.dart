import 'package:flutter/material.dart';
import 'package:materialapp/Widgets/Pages/Shared/base_page.dart';
import 'package:materialapp/Widgets/base_button.dart';

class HomePage2 extends BasePage {
  HomePage2() : super('Page 2');

  @override
  body(context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: BaseButton(
              'Voltar',
              onPressed: () => _onBackPressed(context),
            ),
          ),
        ],
      ),
    );
  }

  _onBackPressed(context) {
    Navigator.pop(context);
  }
}
