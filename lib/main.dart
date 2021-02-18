import 'package:flutter/material.dart';
import 'package:ui_red/start_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter UI-red',
      home: StartPage(),
    );
  }
}
