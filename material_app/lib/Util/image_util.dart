import 'package:flutter/cupertino.dart';

img(String name, {double margin = 20, bool container = true}) {
  if(container){
    return Container(
      child: Image.asset(
        name,
        fit: BoxFit.cover,
      ),
      margin: EdgeInsets.all(margin),
    );
  }

  return Image.asset(
    name,
    fit: BoxFit.cover,
  );
}
