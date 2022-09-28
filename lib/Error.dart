import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Error404 extends StatelessWidget {
  final Padding = EdgeInsets.symmetric(horizontal: 20);
  final name = 'Ahmed salah';
  final email = 'ktasha323@gmail.com';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Error 404',
          style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5),
        ),
      ),
    );
  }
}
