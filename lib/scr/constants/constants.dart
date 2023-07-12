import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class AppConstant {
  static const baseUrl = "https://jsonplaceholder.typicode.com";

  static void loadingConfig() {
    EasyLoading.instance
      ..maskColor = Colors.blue
      ..maskType = EasyLoadingMaskType.clear
      ..boxShadow = <BoxShadow>[]
      ..backgroundColor = Colors.transparent
      ..indicatorWidget = const CircularProgressIndicator()
      ..maskType = EasyLoadingMaskType.black
      ..maskColor = Colors.black
      ..loadingStyle = EasyLoadingStyle.custom
      ..indicatorColor = Colors.blue
      ..textColor = Colors.black;
  }
}

class EndPoint {
  static const post = "/posts";
  static const comments = "/comments";
  static const photos = "/photos";
  static const todos = "/todos";
  static const users = "/users";
}
