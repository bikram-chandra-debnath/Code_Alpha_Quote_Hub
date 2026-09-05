import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:quote_hub/features/home/presentation/widgets/quote_card/reacation_button.dart';

class ReactionSection extends StatelessWidget {
  const ReactionSection({
    super.key,
    required this.totalLikes,
    required this.onLikePressed,
    required this.totalComments,
    required this.onCommentPressed,
    required this.totlaSaves,
    required this.onSavePressed,
    required this.totalShares,
    required this.onSharePressed,
  });

  final String totalLikes;
  final VoidCallback onLikePressed;
  final String totalComments;
  final VoidCallback onCommentPressed;
  final String totlaSaves;
  final VoidCallback onSavePressed;
  final String totalShares;
  final VoidCallback onSharePressed;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 18),
        child: Column(
          spacing: 24,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // reaction
            ReactionButton(
              icon: Iconsax.heart,
              totalReaction: totalLikes,
              onPressed: onLikePressed,
            ),
            // Comment
            ReactionButton(
              icon: Iconsax.message,
              totalReaction: totalComments,
              onPressed: onCommentPressed,
            ),
            // Save
            ReactionButton(
              icon: Iconsax.bookmark,
              totalReaction: totlaSaves,
              onPressed: onSavePressed,
            ),
            // share
            ReactionButton(
              icon: Iconsax.send_1,
              totalReaction: totalShares,
              onPressed: onSharePressed,
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.12),
          ],
        ),
      ),
    );
  }
}

