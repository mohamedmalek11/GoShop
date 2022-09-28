import 'package:flutter/material.dart';
import 'package:goshop/Screens/edit_profile.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple,
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              AppBar(
                centerTitle: true,
                title: Text("Profile",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.4)),
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                backgroundColor: Colors.purple,
                elevation: 0,
              ),
              SizedBox(
                height: 30,
              ),
              Container(

                  //   Padding(padding: EdgeInsets.symmetric(horizontal: 80)),
                  child: ClipOval(
                child: CircleAvatar(
                  radius: 50,
                  child: Image.asset(
                    "assets/image/Ahmed.jpg",
                    height: 100,
                    width: 100,
                  ),
                ),
              )),
              Text(
                'Ahmed Salah',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                'Ahmed Salah @gmail.com',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                    fontSize: 15),
              ),

              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  textAlign: TextAlign.justify,
                  autocorrect: true,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: (Icon(Icons.edit_note, color: Colors.orange)),
                      alignLabelWithHint: true,
                      hintText: ' Edit Profile',
                      floatingLabelAlignment: FloatingLabelAlignment.center,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )),
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => editprofile(),
                        ));
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon:
                          (Icon(Icons.card_travel, color: Colors.orange)),
                      hintText: ' Cart',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )),
                  onTap: () {},
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: (Icon(
                        Icons.favorite_sharp,
                        color: Colors.orange,
                      )),
                      hintText: ' Wishlist',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: (Icon(Icons.featured_play_list_outlined,
                          color: Colors.orange)),
                      hintText: ' Order History',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon:
                          (Icon(Icons.wallet_giftcard, color: Colors.orange)),
                      hintText: 'Cards',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )),
                ),
              ),
              //  SizedBox(height: 70,),

/**/
            ],
          ),
        ));
  }
}
