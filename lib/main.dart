import 'package:flutter/material.dart';
import 'package:goshop/Screens/edit_profile.dart';
import 'package:goshop/Screens/forgetpassword.dart';
import 'package:goshop/Screens/settingapp.dart';
import 'package:goshop/features/splash/presentation/splashview.dart';
import 'package:goshop/features/splash/presentation/widgets/splashviewbody.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Navigation Over Screens',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: splash_view(),

      // Declare routes
    );
  }
}
