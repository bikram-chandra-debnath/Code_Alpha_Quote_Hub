import 'package:flutter/material.dart';
import 'package:quote_hub/features/home/presentation/widgets/new_quote_button.dart';
import 'package:quote_hub/features/home/presentation/widgets/quotes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.maxFinite,

              decoration: BoxDecoration(),
            ),

            Quotes(),
            NewQuote(),
          ],
        ),
      ),
    );
  }
}
