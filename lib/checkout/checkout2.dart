/*
import 'package:flutter/material.dart';
import 'package:goshop/checkout/first_step.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hexcolor/hexcolor_web.dart';
import 'package:steps_indicator/steps_indicator.dart';


class check_out2 extends StatelessWidget {
  check_out2({Key? key}) : super(key: key);

  var street1Controller = TextEditingController();
  var street2Controller = TextEditingController();
  var cityController = TextEditingController();
  var stateController = TextEditingController();
  var countryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: HexColor('#432267'),
        leading: InkWell(
          radius: 20.0,
          child: const Image(
            width: 40,
            height: 40,
            image: AssetImage('assets/images/menu.png'),
          ),
          onTap: () {},
        ),
        centerTitle: true,
        title: const Text(
          'Check out',
        ),
        actions: [
          InkWell(
            radius: 15.0,
            child: const Image(
              width: 30,
              height: 30,
              image: AssetImage('assets/images/home.png'),
            ),
            onTap: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 60.0,
            width: double.infinity,
            color: HexColor('#432267'),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  StepsIndicator(
                    nbSteps: 3,
                    selectedStep: 0,
                    doneStepSize: 16,
                    selectedStepBorderSize: 2,
                    selectedStepColorOut: Colors.white,
                    selectedStepSize: 20,
                    undoneLineColor: Colors.white,
                    unselectedStepBorderSize: 2,
                    unselectedStepColorIn: Colors.white,
                    unselectedStepColorOut: Colors.white,
                    unselectedStepSize: 16,
                    selectedStepColorIn: HexColor('#E99000'),
                    enableLineAnimation: true,
                    enableStepAnimation: true,
                    doneLineColor: HexColor('#E99000'),
                    isHorizontal: true,
                    lineLength: MediaQuery.of(context).size.width / 2 - 80,
                    doneStepColor: HexColor('#E99000'),
                    doneLineThickness: 2,
                    undoneLineThickness: 1,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Address',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          'Payments',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Summary',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 30.0,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        child: Image(
                          image:
                              AssetImage('assets/images/icons8_PayPal_1.png'),
                        ),
                      ),
                      SizedBox(
                        width: 100.0,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        child: Image(
                          image:
                              AssetImage('assets/images/Icon_Saved Cards.png'),
                        ),
                      ),
                      SizedBox(
                        width: 100.0,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        child: Image(
                          image:
                              AssetImage('assets/images/Icon_Saved Cards.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30.0,
                    vertical: 10.0,
                  ),
                  child: Column(
                    children: [
                      defaultTextFiled(
                        lableColor: HexColor('#9F94AB'),
                        controlller: street1Controller,
                        isPassword: false,
                        lable: 'Name On Card',
                        onPressed: () {},
                        validate: (String? value) {
                          if (value!.isEmpty) {
                            return 'Name On Card must not be empty';
                          }
                        },
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      defaultTextFiled(
                        controlller: street2Controller,
                        lableColor: HexColor('#9F94AB'),
                        isPassword: false,
                        lable: 'Card Number',
                        onPressed: () {},
                        validate: (String? value) {
                          if (value!.isEmpty) {
                            return 'Card Numder must not be empty';
                          }
                        },
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: defaultTextFiled(
                                controlller: stateController,
                                lableColor: HexColor('#9F94AB'),
                                isPassword: false,
                                lable: 'Expiry Date',
                                onPressed: () {},
                                validate: (String? value) {
                                  if (value!.isEmpty) {
                                    return 'Expiry Date must not be empty';
                                  }
                                },
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Expanded(
                            child: Container(
                              child: defaultTextFiled(
                                controlller: countryController,
                                lableColor: HexColor('#9F94AB'),
                                isPassword: false,
                                lable: 'CVV',
                                onPressed: () {},
                                validate: (String? value) {
                                  if (value!.isEmpty) {
                                    return 'CVV must not be empty';
                                  }
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 70.0,
                      ),
                      Container(
                        alignment: Alignment(10, 10),
                        child: Icon(
                          Icons.check_circle,
                          color: Color(0xffE99000),
                          size: 28,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FirstStepScreen()));
                            },
                            child: const Text("Back",
                                style: TextStyle(
                                    fontSize: 25, letterSpacing: 2.2)),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => check_out2()));
                            },
                            child: const Text("Next",
                                style: TextStyle(
                                    fontSize: 25, letterSpacing: 2.2)),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                          ),
                        ],
                      ),
                      /*child: defaulButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => forgetpassword()));
                        },
                        child: const Text(
                          "forget password?",
                          style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),*/
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
*/
