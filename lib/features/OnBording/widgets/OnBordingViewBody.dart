import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goshop/consts/consts.dart';
import 'package:goshop/core/config_size.dart';
import 'package:goshop/features/OnBording/OnBOview.dart';

class OnBordingViewBody extends StatefulWidget {
  const OnBordingViewBody({Key? key}) : super(key: key);

  @override
  State<OnBordingViewBody> createState() => _OnBordingViewBodyState();
}

class _OnBordingViewBodyState extends State<OnBordingViewBody> {
  @override
  Widget build(BuildContext context) {
    Sizeconfig()..init(context);

    return ListView(
      children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 90),
          child: Image.asset('assets/image/Catalogue-amico.png'),
        ),
        SizedBox(
          height: Sizeconfig.defaultSize! * 1.2,
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 70),
          child: RichText(
              text: TextSpan(children: <TextSpan>[
            TextSpan(
                text: ' We strive to have a positive impact on ',
                style: TextStyle(color: Colors.white)),
            TextSpan(
                text:
                    'Customers,employees,small businesses,the economy.and communities',
                style: TextStyle(color: Colors.white)),
          ])),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          alignment: Alignment.center,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                //  padding: EdgeInsets.all(25),
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OnBOview(),
                        ));
                  });
                },

                child: Text(
                  'Skip',
                  style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ),
              Text(
                '   |   ',
                style: TextStyle(color: Colors.white),
              ),
              TextButton(
                //  padding: EdgeInsets.symmetric(horizontal: 20),
                onPressed: () {
                  setState(() {
                    TextStyle(color: Colors.orange);

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OnBOview(),
                        ));
                  });
                },

                child: Text(
                  'Next',
                  style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 35,
        ),
        Container(
          alignment: Alignment.center,
          child: DotsIndicator(
              dotsCount: 3,
              position: 0,
              decorator: DotsDecorator(
                activeColor: Colors.orange,
                color: Colors.white70,
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(70),
                    side: BorderSide(color: Colors.white70)),
              )),
        ),
      ],
    );
  }
}
