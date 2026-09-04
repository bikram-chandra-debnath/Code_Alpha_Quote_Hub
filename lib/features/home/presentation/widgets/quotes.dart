import 'package:flutter/material.dart';
import 'package:quote_hub/features/home/presentation/widgets/quote_card.dart';

class Quotes extends StatelessWidget {
  const Quotes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: PageView(
        scrollDirection: Axis.horizontal,
        pageSnapping: true,
        physics: NeverScrollableScrollPhysics(),
        children: .generate(
          10,
          (index) => PageCard(
            profileImage:
                "https://cdn.pixabay.com/photo/2016/09/28/08/28/art-1699977_1280.jpg",
            backgroundImage:
                "https://cdn.pixabay.com/photo/2022/10/12/07/53/youtube-background-7515934_1280.jpg",
            quote:
                'May you find the courage disapoint the people who expact you to be small',
          ),
        ),
      ),
    );
  }
}
