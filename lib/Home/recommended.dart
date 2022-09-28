import 'package:flutter/material.dart';
import 'package:goshop/Home/constants.dart';
import 'details.dart';

class Recomend extends StatelessWidget {
  const Recomend({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecomendPlantCard(
            image: "assets/image/6.jpg",
            title: "Samantha",
            country: "Russia",
            price: 440,
            press: () {},
          ),
          RecomendPlantCard(
            image: "assets/image/14.jpg",
            title: "Angelica",
            country: "Russia",
            price: 500,
            press: () {},
          ),
          RecomendPlantCard(
            image: "assets/image/9.jpg",
            title: "Samantha",
            country: "Russia",
            price: 400,
            press: () {},
          ),
          RecomendPlantCard(
            image: "assets/image/9.jpg",
            title: "Samantha",
            country: "Russia",
            price: 400,
            press: () {},
          ),
          RecomendPlantCard(
              image: "assets/image/9.jpg",
              title: "Samantha",
              country: "Russia",
              price: 400,
              press: () {})
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5,
        ),
        width: size.width * 0.32,
        child: Column(
          children: <Widget>[
            Image.asset(image),
            GestureDetector(
              onTap: press(),
              child: Container(
                padding: EdgeInsets.all(kDefaultPadding / 2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23),
                    ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "$title\n".toUpperCase(),
                              style: Theme.of(context).textTheme.button),
                          TextSpan(
                            text: "$country".toUpperCase(),
                            style: TextStyle(
                              color: kPrimaryColor.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Text(
                      '\$$price',
                      style: Theme.of(context)
                          .textTheme
                          .button!
                          .copyWith(color: kPrimaryColor),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Sale extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: const [
        Center(
          child: Image(
            image: AssetImage('assets/image/7.jpg'),
            width: 411,
            height: 190,
            fit: BoxFit.fill,
          ),
        )
      ],
    );
  }
}
