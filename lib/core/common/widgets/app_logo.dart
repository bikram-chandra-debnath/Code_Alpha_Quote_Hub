import 'package:flutter/material.dart';
import 'package:quote_hub/core/constants/colors.dart';
import 'package:quote_hub/core/constants/images.dart';
import 'package:quote_hub/core/constants/texts.dart';

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
          child: Image.asset(AppImages.logo),
        ),

        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "${AppTexts.quote} ",
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: logoColor,
                ),
              ),
              TextSpan(
                text: AppTexts.hub,
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
