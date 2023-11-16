import 'package:flutter/material.dart';

AppBar Function(String title) screenTitle = (String title) {
  var textStyle = const TextStyle(
    color: Colors.white,
    fontSize: 32,
    fontWeight: FontWeight.w200,
  );

  return AppBar(
    title: Text(
      title,
      style: textStyle,
    ),
    centerTitle: false,
    automaticallyImplyLeading: false,
    leading: null,
  );
};
