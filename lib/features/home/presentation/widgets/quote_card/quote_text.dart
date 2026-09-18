import 'package:flutter/material.dart';
import 'package:quote_hub/core/constants/colors.dart';
import 'package:quote_hub/core/constants/sizes.dart';

class QuoteText extends StatelessWidget {
  const QuoteText({super.key, required this.quote, required this.authorName});

  final String quote, authorName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.black.withValues(alpha: 0.8)),
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 55),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  quote,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 35,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: AppSizes.spaceBtwSections),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "- ",
                          style: Theme.of(context).textTheme.titleLarge!
                              .copyWith(
                                color: AppColors.white,
                                fontWeight: FontWeight.w900,
                              ),
                        ),
                        TextSpan(
                          text: authorName,
                          style: Theme.of(context).textTheme.titleLarge!
                              .copyWith(
                                color: AppColors.textPrimary,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: AppSizes.spaceBtwItems * 2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
