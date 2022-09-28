import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:goshop/core/config_size.dart';
import 'package:goshop/features/OnBording/OnBordingView.dart';
import 'package:goshop/features/OnBording/OnBordingView3.dart';

class OnbordViewbody2 extends StatefulWidget {
  const OnbordViewbody2({Key? key}) : super(key: key);

  @override
  State<OnbordViewbody2> createState() => _OnbordViewbody2State();
}

class _OnbordViewbody2State extends State<OnbordViewbody2> {
  @override
  Widget build(BuildContext context) {
    Sizeconfig()..init(context);

    return ListView(
      children: [
        Container(
          alignment: Alignment.centerRight,
          child: TextButton(
            // padding: EdgeInsets.only(top: 20),
            onPressed: () {
              setState(() {
                //  Navigator.push(context, MaterialPageRoute(builder: (context) => OnBOview(),));
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
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 70),
          child: Image.asset('assets/image/Free shipping-pana.png'),
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
                text: ' We promote the fact that we offer ',
                style: TextStyle(color: Colors.white)),
            TextSpan(
                text: 'free shipping for all orders ',
                style: TextStyle(color: Colors.white)),
          ])),
        ),
        SizedBox(
          height: 102,
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
                          builder: (context) => OnBordingView(),
                        ));
                  });
                },

                child: Text(
                  'Back',
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
                //padding: EdgeInsets.symmetric(horizontal: 20),
                onPressed: () {
                  setState(() {
                    TextStyle(color: Colors.orange);

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OnBordingView3(),
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
              position: 1,
              decorator: DotsDecorator(
                activeColor: Colors.orange,
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                color: Colors.white70,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(70),
                    side: BorderSide(color: Colors.white70)),
              )),
        ),
      ],
    );
  }
}
