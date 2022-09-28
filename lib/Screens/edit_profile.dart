import 'package:flutter/material.dart';

class editprofile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _editprofile();
}

class _editprofile extends State<editprofile> {
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
                title: Text("Edit profile"),
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
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Container(
                        height: 47,
                        color: Colors.orange,
                        child: Icon(Icons.person),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      alignLabelWithHint: true,
                      hintText: ' Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Container(
                        height: 47,
                        color: Colors.orange,
                        child: Icon(Icons.mail),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      hintText: ' Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Container(
                        height: 47,
                        color: Colors.orange,
                        child: Icon(Icons.home),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      hintText: ' Address',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Container(
                        height: 47,
                        color: Colors.orange,
                        child: Icon(Icons.location_on),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      hintText: ' Location',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Container(
                        height: 47,
                        color: Colors.orange,
                        child: Icon(Icons.phone),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      hintText: ' phone number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )),
                ),
              ),
              //  SizedBox(height: 70,),
              Spacer(),

              Container(
                width: double.infinity,
                child: FloatingActionButton.extended(
                    backgroundColor: Colors.orange,
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {},
                    label: Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    )),
              ),

/**/
            ],
          ),
        ));
  }
}
