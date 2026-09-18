
import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key, this.logoColor = Colors.black});

  final Color logoColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: Image.asset("assets/logo/Quote_Hub.png"),
        ),

        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Quote ",
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: logoColor,
                ),
              ),
              TextSpan(
                text: "Hub",
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.pinkAccent,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
