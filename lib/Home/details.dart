import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class view extends StatefulWidget {
  const view({Key? key}) : super(key: key);

  @override
  State<view> createState() => _viewState();
}

class _viewState extends State<view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              child: Image.asset(
                'assets/image/2.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
                top: 8,
                left: 20,
                child: Container(
                  // padding: EdgeInsets.all(15),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_back_outlined,
                          color: Colors.deepPurple, size: 30)),
                )),
            Positioned(
                top: 8,
                right: 20,
                child: Container(
                  //  padding: EdgeInsets.all(15),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_outline,
                          color: Colors.deepPurple, size: 30)),
                )),
            Positioned(
                top: 280,
                right: 10,
                child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.deepPurple,
                    ),
                    child: Center(
                        child: Text(
                      '15% OFF',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )))),

            //  SizedBox(height: 14,),
          ],
        ),
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            ),
            height: MediaQuery.of(context).size.height * 0.5,
            width: double.infinity,
            padding: EdgeInsets.only(top: 20, left: 20, right: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Women\'s Fall Winter Scarf',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
                Text('American Trends',
                    style: TextStyle(
                      fontSize: 15,
                    )),
                SmoothStarRating(
                  borderColor: Colors.yellow,
                  color: Colors.orangeAccent,
                  rating: 4,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Wearing this scarf in cold fall winter or spring days would be good, long time use durable. You can use it as a shawl to attend an evening party,or as wrap when you go out for a wonderful travel.soft,warm lightweight,easy carry.',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Material & Size',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Ultra Soft Cashmere-like Acrylic,furry,cozy,light and warm, close to skin.Oversized: 59\" * 59\"(L X',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 50),
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('\u0024 15.99 |  ',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        Icon(Icons.shopping_bag, color: Colors.white),
                        Text(' Add To Cart',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ],
    ));
  }
}
