import 'package:flutter/material.dart';
import 'login_page.dart';

void main() => runApp( SmartLearn());

class SmartLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        fontFamily: 'Nunito',
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
         body: LoginPage(),
      ),
    );
  }
}
