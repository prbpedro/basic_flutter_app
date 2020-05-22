import 'package:flutter/material.dart';
import 'package:materialapp/Util/image_util.dart';
import 'package:materialapp/Util/navigator_util.dart';
import 'package:materialapp/Widgets/Pages/Shared/base_page.dart';
import 'package:materialapp/Widgets/Pages/listview_page.dart';
import 'package:materialapp/Widgets/Pages/home_page2.dart';
import 'package:materialapp/Widgets/Pages/home_page3.dart';
import 'package:materialapp/Widgets/base_button.dart';

class HomePage extends BasePage {
  HomePage() : super('Hello Flutter');

  @override
  body(context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _text(),
          _pageView(),
          _buttons(context),
        ],
      ),
    );
  }

  Container _pageView() {
    return Container(
      height: 300,
      child: PageView(
        children: <Widget>[
          img('assets/images/dog1.jpg'),
          img('assets/images/dog2.jpg'),
          img('assets/images/dog3.jpg'),
          img('assets/images/dog4.jpg'),
        ],
      ),
    );
  }

  _buttons(context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            BaseButton(
              'ListView',
              onPressed: () => navigate(context, ListViewPage()),
            ),
            BaseButton(
              'Page 2',
              onPressed: () => navigate(context, HomePage2()),
            ),
            BaseButton(
              'Page 3',
              onPressed: () => navigate(context, HomePage3()),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            BaseButton(
              'Snack',
              onPressed: () => navigate(context, ListViewPage()),
            ),
            BaseButton(
              'Dialog',
              onPressed: () => navigate(context, ListViewPage()),
            ),
            BaseButton(
              'Toasts',
              onPressed: () => navigate(context, ListViewPage()),
            ),
          ],
        ),
      ],
    );
  }

  _text() {
    return Text(
      "Hello World!",
      style: TextStyle(
        fontSize: 30,
        color: Colors.blue,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        decoration: TextDecoration.underline,
        decorationColor: Colors.red,
        decorationStyle: TextDecorationStyle.wavy,
      ),
    );
  }
}
