import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goshop/Screens/login.dart';

class settingapp extends StatefulWidget {
  const settingapp({Key? key}) : super(key: key);

  @override
  State<settingapp> createState() => _settingappState();
}

class _settingappState extends State<settingapp> {
  bool valnotify1 = true;
  bool valnotify2 = false;
  bool valnotify3 = false;
  onChangedfunction(bool newValue1) {
    setState(() {
      valnotify1 = newValue1;
    });
  }

  onChangedfunction2(bool newValue2) {
    setState(() {
      valnotify2 = newValue2;
    });
  }

  onChangedfunction3(bool newValue3) {
    setState(() {
      valnotify3 = newValue3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Setting",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                letterSpacing: 1.2,
                color: Colors.white)),
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
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.blueAccent,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Account",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Divider(
              height: 20,
              thickness: 1,
            ),
            SizedBox(
              height: 10,
            ),
            buildAoption(context, 'Change Password'),
            buildAoption(context, 'Content setting'),
            buildAoption(context, 'Social'),
            buildAoption(context, 'Language'),
            buildAoption(context, 'Privacy and Security'),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Icon(
                    Icons.volume_up_outlined,
                    color: Colors.blueAccent,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Notifications",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Divider(
              height: 20,
              thickness: 1,
            ),
            SizedBox(
              height: 10,
            ),
            buildNotificationOption(
                'Theme Dark', valnotify1, onChangedfunction),
            buildNotificationOption(
                'Account Active', valnotify2, onChangedfunction2),
            buildNotificationOption(
                'Opportunity', valnotify3, onChangedfunction3),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 50,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => MyLogin()));
                },
                child: Text('Sign Out',
                    style: TextStyle(fontSize: 25, letterSpacing: 1.2)),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding buildNotificationOption(
      String title, bool value, Function onChangedmethod) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600]),
          ),
          Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
                value: value,
                onChanged: (bool newvalue) {
                  onChangedmethod(newvalue);
                }),
          )
        ],
      ),
    );
  }

  GestureDetector buildAoption(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600]),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
