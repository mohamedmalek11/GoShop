import 'package:flutter/material.dart';
import 'package:goshop/consts/consts.dart';
import 'package:goshop/features/OnBording/widgets/OnBordingViewBody.dart';

class OnBordingView extends StatelessWidget {
  const OnBordingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maincolor,
      body: OnBordingViewBody(),
    );
  }
}
