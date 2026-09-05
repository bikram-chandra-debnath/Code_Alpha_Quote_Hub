
import 'package:flutter/material.dart';

class QuoteText extends StatelessWidget {
  const QuoteText({
    super.key,
    required this.quote,
  });

  final String quote;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 55),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                quote,
                style: TextStyle(fontSize: 35, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

