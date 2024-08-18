import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0)),
            backgroundColor: HexColor('#FFFFFF'),
            minimumSize: const Size(150, 65),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                "assets/images/apple.svg",
                height: 30,
                width: 30,
              ),
              const SizedBox(
                width: 10.0,
              ),
              const Text(
                "Apple",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0)),
            backgroundColor: HexColor('#FFFFFF'),
            minimumSize: const Size(150, 65),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                "assets/images/google.svg",
                height: 30,
                width: 30,
              ),
              const SizedBox(
                width: 10.0,
              ),
              const Text(
                "Google",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
