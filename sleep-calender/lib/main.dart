import 'package:flutter/material.dart';
import 'package:sleep_calender/sign_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SignInPage());
  }
}
