import 'package:flutter/material.dart';
import 'package:uts_flutter/cart.dart';
import 'package:uts_flutter/detail.dart';
import 'package:uts_flutter/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}