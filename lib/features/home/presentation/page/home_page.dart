import 'package:flutter/material.dart';
import 'package:quote_hub/features/home/presentation/widgets/navigation_bar.dart';
import 'package:quote_hub/features/home/presentation/widgets/quotes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.maxFinite,

              decoration: BoxDecoration(
                color: Colors.deepPurple.withValues(alpha: 0.2),
              ),
            ),

            // Quote
            Quotes(),

            // navigation bar
            AppNavigationBar(),
          ],
        ),
      ),
    );
  }
}
