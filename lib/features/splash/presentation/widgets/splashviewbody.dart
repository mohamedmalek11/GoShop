import 'package:flutter/material.dart';
import 'dart:async';
import 'package:goshop/features/OnBording/OnBordingView.dart';

class splashviewbody extends StatefulWidget {
  const splashviewbody({Key? key}) : super(key: key);

  @override
  State<splashviewbody> createState() => _splashviewbodyState();
}

class _splashviewbodyState extends State<splashviewbody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? go;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    go = Tween<double>(begin: 0.2, end: 1).animate(animationController!)
      ..addListener(() {
        setState(() {
          if (animationController!.isCompleted) {
            animationController?.repeat(reverse: true);
          }
        });
      });
    animationController?.forward();
    GoToBording();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF432267),
      alignment: Alignment.center,
      child: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 180),
            child: Image.asset(
              "assets/image/Catalogue-amico.png",
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: FittedBox(
                  child: Opacity(
                    opacity: go!.value,
                    child: Text(
                      "GO SHOP",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Josefin Sans',
                          color: Color(0xFFFEFEFE)),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          Column(
            children: [
              CircularProgressIndicator(
                backgroundColor: Colors.white,
                strokeWidth: 2,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future GoToBording() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, route);
  }

  route() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OnBordingView(),
        ));
  }
}
