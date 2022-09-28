import 'package:flutter/material.dart';
import 'package:goshop/Error.dart';
import 'package:goshop/Home/home.dart';
import 'package:goshop/Screens/login.dart';
import 'package:goshop/Screens/profile.dart';
import 'package:goshop/Screens/settingapp.dart';
import 'package:goshop/checkout/first_step.dart';
import 'package:goshop/wishlist/wishlist.dart';

class navigation_drawer extends StatelessWidget {
  final Padding = EdgeInsets.symmetric(horizontal: 40);
  final name = 'Ahmed salah';
  final email = 'ktasha323@gmail.com';
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.purple,
        child: ListView(
          padding: Padding,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
                alignment: Alignment.center,
                child: ClipOval(
                  child: CircleAvatar(
                    radius: 40,
                    child: Image.asset(
                      "assets/image/log_i.jpg",
                      height: 100,
                      width: 100,
                    ),
                  ),
                )),
            SizedBox(
              height: 5,
            ),
            Column(
              children: [
                Text(name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                Text(email, style: TextStyle(color: Colors.orange)),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            items(
              text: "Home",
              icon: Icons.home,
              onClicked: () => SelectedItrem(context, 0),
            ),
            items(
              text: "Wishlist",
              icon: Icons.favorite,
              onClicked: () => SelectedItrem(context, 1),
            ),
            items(
              text: " Cart",
              icon: Icons.shopping_bag,
              onClicked: () => SelectedItrem(context, 2),
            ),
            items(
              text: "Check out",
              icon: Icons.featured_play_list,
              onClicked: () => SelectedItrem(context, 3),
            ),
            items(
              text: "Profile",
              icon: Icons.person,
              onClicked: () => SelectedItrem(context, 4),
            ),
            items(
              text: "App setting",
              icon: Icons.settings,
              onClicked: () => SelectedItrem(context, 5),
            ),
            items(
              text: "Help & FAQs",
              icon: Icons.help,
              onClicked: () => SelectedItrem(context, 6),
            ),
            items(
              text: "Logout",
              icon: Icons.settings,
              onClicked: () => SelectedItrem(context, 7),
            ),
          ],
        ),
      ),
    );
  }
}

Widget items({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  final color1 = Colors.white;
  final color2 = Colors.orange;
  final hovercolor = Colors.white70;
  return ListTile(
    leading: Icon(icon, color: color2),
    title: Text(
      text,
      style:
          TextStyle(color: color1, fontWeight: FontWeight.bold, fontSize: 15),
    ),
    hoverColor: hovercolor,
    onTap: onClicked,
  );
}

// ده مثال للتنقل للصفحه اخري
void SelectedItrem(BuildContext context, int index) {
  Navigator.of(context).pop();
  switch (index) {
    case 0:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => HomeScreen()));
      break;
    case 1:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Wishlist()));
      break;
    case 2:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Error404()));
      break;
    case 3:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => FirstStepScreen()));
      break;
    case 4:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => profile()));
      break;
    case 5:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => settingapp()));
      break;
    case 6:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Error404()));
      break;

    case 7:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => MyLogin()));
      break;
  }
}
