import 'package:flutter/material.dart';
import 'package:materialapp/Widgets/Pages/Shared/base_page.dart';
import 'package:materialapp/Widgets/base_button.dart';

class HomePage3 extends BasePage {
  HomePage3() : super('Page 3');

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
              color: Colors.green,
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
