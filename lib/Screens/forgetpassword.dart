import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:goshop/Screens/login.dart';

class forgetpassword extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _forgetpassword();
  }
}

class _forgetpassword extends State<forgetpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(child: SvgPicture.asset("assets/icons/login.svg")),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Text(
                  "Send your Email please.",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 20,
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    hintText: 'Email',
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.deepPurple,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              //  SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 20,
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'phone',
                    hintText: 'phone',
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.deepPurple,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              //   Padding(padding:EdgeInsets.all(20),),

              SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Send', style: TextStyle(fontSize: 20)),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyLogin(),
                            ));
                      });
                    },
                    child: Text(
                      'I have an account',
                      style: TextStyle(color: Colors.deepPurple, fontSize: 20),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
