/*
import 'package:flutter/material.dart';
import 'package:goshop/Home/home.dart';
import 'package:goshop/features/OnBording/OnBOview.dart';
import 'package:goshop/features/OnBording/OnBordingView.dart';
import 'package:goshop/features/OnBording/OnBordingView3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class welcome_screen extends StatefulWidget {
  const welcome_screen({Key? key}) : super(key: key);

  @override
  State<welcome_screen> createState() => _welcome_screenState();
}

class _welcome_screenState extends State<welcome_screen> {
  PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

            children: [
              OnBordingView(),
              OnBOview(),
              OnBordingView3(),
            ],
          ),
              alignment: Alignment(0, 0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(3);
                    },
                    child: Text("Skip",
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                  ),
                  SmoothPageIndicator(controller: _controller, count: 3),
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return HomeScreen();
                            }));
                          },
                          child: Text("Done",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(microseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: Text("Next",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                        )
                ],
              )),
        ],
      ),
    );
  }
}
*/
