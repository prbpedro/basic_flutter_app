import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

  Future navigate(context, Widget page) async {
  return await Navigator.push(
    context,
    MaterialPageRoute(
      builder: (BuildContext context) {
        return page;
      },
    ),
  );

}