import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlutterExs {

  expanded(context) {
//    return Container(
//        color: Colors.red,
//
//        child: SizedBox.expand(
//          child: Column(
//
//            children: expanded(context),
//          ),
//        )
//    );
    return <Widget>[
      Expanded(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            button(),
            button(),
            button(),
          ],
        ),
      ),
      Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            button(),
            button(),
            button(),
          ],
        ),
      ),
    ];
  }

  columnRow(context) {
//    return Container(
//        color: Colors.red,
//
//        child: SizedBox.expand(
//          child: Column(
//
//            children: _columnRow(context),
//          ),
//        )
//    );
    return <Widget>[
      Container(
        color: Colors.yellow,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            button(),
            button(),
            button(),
          ],
        ),
      ),
      Container(
        color: Colors.yellow,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            button(),
            button(),
            button(),
          ],
        ),
      ),
    ];
  }

  button() {
//    return Container(
//      color: Colors.white,
//      child: Center(
//        child: _button(),
//      ),
//    );
    return RaisedButton(
      color: Colors.blue,
      child: Text(
        'Ok',
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
      onPressed: () => onOkPressed("Parametro"),
    );
  }

  onOkPressed(param) {
    print(param);
  }

  img() {
//    return Container(
//      color: Colors.white,
////      child: ListView(
////          children: <Widget>[
////            _text(),
////            _img()
////          ]
////      ),
////      child: SizedBox.expand(
////          child: _img()
////      ),
//      child: Center(
//          child: _img()
//      ),
//      //margin: EdgeInsets.only(left:10, top: 10)
//    );

    //return Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQic4Tx27KieTfowQBGUET4h8LKvrdHfU1UZ6qY_9B3pU0_uMVG&usqp=CAU');
    return Image.asset('assets/images/dog1.jpg', fit: BoxFit.cover);
  }

  text() {
//    return Container(
//       color: Colors.white,
//       child: _text()
//      ),
//      margin: EdgeInsets.only(left:10, top: 10)
//    );

    return Text("Hello World!",
        style: TextStyle(
            fontSize: 30,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.underline,
            decorationColor: Colors.red,
            decorationStyle: TextDecorationStyle.wavy));
  }
}
