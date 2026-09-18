import 'package:flutter/material.dart';
import 'package:quote_hub/core/common/widgets/app_logo.dart';
import 'package:quote_hub/core/constants/colors.dart';
import 'package:quote_hub/core/utils/helpers/device_helper.dart';

class QuoteBackground extends StatelessWidget {
  const QuoteBackground({super.key, required this.backgroundImage});

  final String backgroundImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDeviceHelper.getScreenHeight(context) * 0.8,
      width: double.maxFinite,
      child: Image(
        image: NetworkImage(backgroundImage),
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          } else {
            return Expanded(
              child: Container(decoration: BoxDecoration(color:AppColors.black)),
            );
          }
        },
        errorBuilder: (context, error, stackTrace) {
          debugPrint("Image Loading Error: $error");

          return Expanded(
            child: Center(child: AppLogo(logoColor: Colors.white)),
          );
        },
      ),
    );
  }
}
