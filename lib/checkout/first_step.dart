/*
import 'package:flutter/material.dart';
import 'package:goshop/checkout/checkout2.dart';
import 'package:hexcolor/hexcolor.dart';

class FirstStepScreen extends StatelessWidget {
  FirstStepScreen({Key? key}) : super(key: key);

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
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Payments',
                          style: TextStyle(
                            color: Colors.grey,
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
                      CircleAvatar(
                        child: const Icon(
                          Icons.check_rounded,
                          color: Colors.white,
                        ),
                        radius: 12.0,
                        backgroundColor: HexColor('#E99000'),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      const Text(
                        'Billing address is the same as delivery address',
                        style: TextStyle(fontWeight: FontWeight.w600),
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
                        lable: 'Street 1',
                        onPressed: () {},
                        validate: (String? value) {
                          if (value!.isEmpty) {
                            return 'First street must not be empty';
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
                        lable: 'Street 2',
                        onPressed: () {},
                        validate: (String? value) {
                          if (value!.isEmpty) {
                            return 'Second street must not be empty';
                          }
                        },
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      defaultTextFiled(
                        controlller: cityController,
                        lableColor: HexColor('#9F94AB'),
                        isPassword: false,
                        lable: 'City',
                        onPressed: () {},
                        validate: (String? value) {
                          if (value!.isEmpty) {
                            return 'City must not be empty';
                          }
                        },
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
                                lable: 'State',
                                onPressed: () {},
                                validate: (String? value) {
                                  if (value!.isEmpty) {
                                    return 'State must not be empty';
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
                                lable: 'Country',
                                onPressed: () {},
                                validate: (String? value) {
                                  if (value!.isEmpty) {
                                    return 'Country must not be empty';
                                  }
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            FirstStepScreen()));
                              },
                              child: const Text("Back",
                                  style: TextStyle(
                                      fontSize: 25, letterSpacing: 2.2)),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
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
                                      borderRadius: BorderRadius.circular(20))),
                            ),
                          ],
                        ),
                      ),
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
