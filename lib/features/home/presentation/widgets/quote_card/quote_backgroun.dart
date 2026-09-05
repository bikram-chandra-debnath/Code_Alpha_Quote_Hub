
import 'package:flutter/material.dart';

class QuoteBackground extends StatelessWidget {
  const QuoteBackground({
    super.key,
    required this.backgroundImage,
  });

  final String backgroundImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      width: double.maxFinite,
      child: Image(
        image: NetworkImage(backgroundImage),
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          } else {
            return Expanded(
              child: Container(
                decoration: BoxDecoration(color: Colors.black),
              ),
            );
          }
        },
      ),
    );
  }
}
