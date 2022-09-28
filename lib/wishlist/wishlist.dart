import 'package:flutter/material.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 5,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/MainScreen');
                },
                icon: const Icon(Icons.home_outlined)),
          ],
          title: const Text('Wishlist'),
          centerTitle: true,
          backgroundColor: Colors.purple[900],
        ),
        drawer: Drawer(
          backgroundColor: Colors.purple[900],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                        color: Colors.purple[900], shape: BoxShape.rectangle),
                    currentAccountPicture: const CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage('assets/000.jpg'),
                    ),
                    accountName: const Text(
                      'Kerolos Karam',
                      style: TextStyle(
                          inherit: true,
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w300),
                    ),
                    accountEmail: const Text(
                      'keroloskaram2030@gmail.com',
                      style: TextStyle(color: Colors.orangeAccent),
                    ),
                  ),
                  const ListTile(
                    title: Text(
                      'Home',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    leading: Icon(
                      Icons.home,
                      color: Colors.orangeAccent,
                    ),
                  ),
                  const ListTile(
                    title: Text(
                      'Wishlist',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    leading: Icon(
                      Icons.favorite,
                      color: Colors.orangeAccent,
                    ),
                  ),
                  const ListTile(
                    title: Text(
                      'Cart',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    leading: Icon(
                      Icons.shopping_bag,
                      color: Colors.orangeAccent,
                    ),
                  ),
                  const ListTile(
                    title: Text(
                      'Order History',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    leading: Icon(
                      Icons.content_paste_sharp,
                      color: Colors.orangeAccent,
                    ),
                  ),
                  const ListTile(
                    title: Text(
                      'Profile',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    leading: Icon(
                      Icons.account_circle,
                      color: Colors.orangeAccent,
                    ),
                  ),
                  const ListTile(
                    title: Text(
                      'App Setting',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    leading: Icon(
                      Icons.settings,
                      color: Colors.orangeAccent,
                    ),
                  ),
                  const ListTile(
                    title: Text(
                      'Help & FAQs',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    leading: Icon(
                      Icons.question_mark_rounded,
                      color: Colors.orangeAccent,
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 12),
                child: const ListTile(
                  title: Text(
                    'Logout',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  leading: Icon(
                    Icons.logout,
                    color: Colors.orangeAccent,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext ctx, int index) {
            return const WishlistStack();
          },
        ));
  }
}

class WishlistStack extends StatefulWidget {
  const WishlistStack({Key? key}) : super(key: key);

  @override
  State<WishlistStack> createState() => _WishlistStackState();
}

class _WishlistStackState extends State<WishlistStack> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(right: 30.0, bottom: 10.0),
          child: Material(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.circular(5.0),
            elevation: 3.0,
            child: InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 80,
                      child: Image.asset('assets/111.jpg'),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('T-shirt',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              )),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            "99.0 L.E",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        positionedRemove(),
      ],
    );
  }
}

Widget positionedRemove() {
  return Positioned(
    top: 20,
    right: 15,
    child: Container(
      height: 30,
      width: 30,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        padding: EdgeInsets.all(0.0),
        color: Colors.purple[900],
        child: Icon(
          Icons.clear,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    ),
  );
}
