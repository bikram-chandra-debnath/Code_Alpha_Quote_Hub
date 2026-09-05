
import 'package:flutter/material.dart';
import 'package:quote_hub/core/common/button/elevated_buttons.dart';

class Author extends StatelessWidget {
  const Author({
    super.key,
    required this.onProfilePressed,
    required this.profileImage,
    required this.authorName,
    required this.onFollowPressed,
  });

  final VoidCallback onProfilePressed;
  final String profileImage;
  final String authorName;
  final VoidCallback onFollowPressed;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 24, bottom: 100),
        child: Row(
          children: [
            IconButton(
              onPressed: onProfilePressed,
              icon: CircleAvatar(
                maxRadius: 20,
                backgroundImage: NetworkImage(profileImage),
              ),
            ),
            GestureDetector(
              onTap: onProfilePressed,
              child: Text(
                authorName,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(width: 8),

            AppElevatedButton(
              backgrondColor: Colors.white,
              borderRadius: 500,
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: 12,
                vertical: 2,
              ),

              onPressed: onFollowPressed,
              child: Text(
                "Follow",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Colors.pinkAccent,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}