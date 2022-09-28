import 'package:flutter/material.dart';
import 'package:goshop/consts/consts.dart';
import 'package:goshop/features/OnBording/widgets/OnbordViewbody2.dart';

class OnBOview extends StatelessWidget {
  const OnBOview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maincolor,
      body: OnbordViewbody2(),
    );
  }
}
