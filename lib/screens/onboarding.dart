import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:udrive/screens/onboarding_2.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("#2742F7"),
        body: Stack(children: [
          Positioned(
            top: 90,
            left: 0,
            right: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.60,
              child: Image.asset(
                "assets/images/phone.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: HexColor("#FFFFFF"),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Make your way more comfortable",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: HexColor("#1D2048"),
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15.0, bottom: 20.0),
                    child: Text(
                      "Find the mechanic along the entire route without interrupting your route using this platform.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OnboardingTwo()),
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
                  const SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
            ),
          ),
        ]));
  }
}
