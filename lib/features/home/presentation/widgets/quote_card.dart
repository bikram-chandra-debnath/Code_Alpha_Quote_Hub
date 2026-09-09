import 'package:flutter/material.dart';
import 'package:quote_hub/features/home/presentation/widgets/quote_card/quote_backgroun.dart';
import 'package:quote_hub/features/home/presentation/widgets/quote_card/quote_text.dart';

class PageCard extends StatelessWidget {
  const PageCard({
    super.key,
    required this.backgroundImage,
    required this.quote,
    required this.authorName,
  });

  final String backgroundImage, quote, authorName;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        QuoteBackground(backgroundImage: backgroundImage),
        // Quote Text
        QuoteText(quote: quote, authorName: authorName),
      ],
    );
  }
}
