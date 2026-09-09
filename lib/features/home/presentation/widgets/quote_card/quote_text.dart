import 'package:flutter/material.dart';

class QuoteText extends StatelessWidget {
  const QuoteText({super.key, required this.quote, required this.authorName});

  final String quote, authorName;

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
              SizedBox(height: 48),
              Align(
                alignment: Alignment.bottomLeft,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "- ",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      TextSpan(
                        text: authorName,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.pinkAccent.shade200,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
