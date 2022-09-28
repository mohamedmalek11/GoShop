import 'package:flutter/material.dart';
import 'package:goshop/Home/constants.dart';
import 'package:goshop/Home/popular.dart';
import 'package:goshop/Home/recommended.dart';
import 'package:goshop/Home/title_with_more_btn.dart';
import 'package:goshop/Home/titlewithsearch.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recomended",
            press: () {},
            stn: "see more(9)",
          ),
          Recomend(),
          Sale(),
          TitleWithMoreBtn(
            title: "Popular",
            press: () {},
            stn: "",
          ),
          SizedBox(height: kDefaultPadding),
          popular(),
        ],
      ),
    );
  }
}
