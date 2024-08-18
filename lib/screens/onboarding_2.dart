import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:udrive/screens/login.dart';

class OnboardingTwo extends StatelessWidget {
  const OnboardingTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 70.0),
          child: Container(
            color: Colors.white,
            width: double.infinity,
            child: Column(
              children: <Widget>[
                const Image(image: AssetImage("assets/images/carousel_2.png")),
                const SizedBox(
                  height: 20.0,
                ),
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                      color: HexColor("#FFFFFF"),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60))),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Solution for drivers \nstriving for \nsuccessful work",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: HexColor("#1D2048")),
                        ),
                        const Text(
                          "Be part of a new era of work with this innovative app",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Login()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100.0)),
                              backgroundColor: HexColor('#1D2048'),
                              minimumSize: const Size(100, 100),
                              textStyle: const TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                            child: const Icon(
                              Icons.arrow_right_alt_outlined,
                              size: 40,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                )),
              ],
            ),
          ),
        ));
  }
}
