import 'package:flutter/material.dart';
import 'package:materialapp/Widgets/Pages/Shared/base_page.dart';
import 'package:materialapp/Widgets/Pages/home_page1.dart';
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
          _img('assets/images/dog1.jpg'),
          _img('assets/images/dog2.jpg'),
          _img('assets/images/dog3.jpg'),
          _img('assets/images/dog4.jpg'),
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
              onPressed: () => _navigate(context, HomePage1()),
            ),
            BaseButton(
              'Page 2',
              onPressed: () => _navigate(context, HomePage2()),
            ),
            BaseButton(
              'Page 3',
              onPressed: () => _navigate(context, HomePage3()),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            BaseButton(
              'Snack',
              onPressed: () => _navigate(context, HomePage1()),
            ),
            BaseButton(
              'Dialog',
              onPressed: () => _navigate(context, HomePage1()),
            ),
            BaseButton(
              'Toasts',
              onPressed: () => _navigate(context, HomePage1()),
            ),
          ],
        ),
      ],
    );
  }

  _navigate(context, Widget page) async {
    String txt = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      ),
    );

    print(txt);
  }

  _img(String name) {
    return Container(
      child: Image.asset(
        name,
        fit: BoxFit.cover,
      ),
      margin: EdgeInsets.all(20),
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
