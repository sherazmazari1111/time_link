import 'package:flutter/material.dart';

class AppConfig {
  BuildContext context;
  double height = 1;
  double width = 1;

  AppConfig(this.context) {
    MediaQueryData _queryData = MediaQuery.of(context);
    height = _queryData.size.height;
    width = _queryData.size.width;
  }
}