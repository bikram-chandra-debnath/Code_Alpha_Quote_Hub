
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:quote_hub/features/home/presentation/widgets/notification_button.dart';
import 'package:quote_hub/features/home/presentation/widgets/user_profile.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          UserProfile(
            image:
                "https://images.pexels.com/photos/34630594/pexels-photo-34630594.jpeg?_gl=1*mtmtej*_ga*MjEwODc1ODI0MC4xNzgyMTkzMTYy*_ga_8JE65Q40S6*czE3ODg1MjY3MzEkbzQkZzEkdDE3ODg1MjY4MzkkajQxJGwwJGgw",
          ),
          NotificationButton(onPressed: () {}, icon: Iconsax.notification),
        ],
      ),
    );
  }
}

