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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Error 404',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5),
            ),
            Container(
              height: 40,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back',
                    style: TextStyle(fontSize: 20, letterSpacing: 1.2)),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
