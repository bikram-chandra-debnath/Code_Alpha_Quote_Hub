import 'package:flutter/material.dart';
import 'package:quote_hub/features/home/presentation/widgets/quote_card/author_section.dart';
import 'package:quote_hub/features/home/presentation/widgets/quote_card/quote_backgroun.dart';
import 'package:quote_hub/features/home/presentation/widgets/quote_card/quote_text.dart';
import 'package:quote_hub/features/home/presentation/widgets/quote_card/reaction_section.dart';

class PageCard extends StatelessWidget {
  const PageCard({
    super.key,
    required this.backgroundImage,
    required this.quote,
    required this.profileImage,
    required this.onProfilePressed,
    required this.onAuthorNamePressed,
    required this.onFollowPressed,
    required this.authorName,
    required this.totalLikes,
    required this.totalComments,
    required this.totlaSaves,
    required this.totalShares,
    required this.onLikePressed,
    required this.onCommentPressed,
    required this.onSavePressed,
    required this.onSharePressed,
  });

  final String backgroundImage,
      quote,
      profileImage,
      authorName,
      totalLikes,
      totalComments,
      totlaSaves,
      totalShares;
  final VoidCallback onProfilePressed,
      onAuthorNamePressed,
      onFollowPressed,
      onLikePressed,
      onCommentPressed,
      onSavePressed,
      onSharePressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        QuoteBackground(backgroundImage: backgroundImage),
        // Quote Text
        QuoteText(quote: quote),
        // Right side bar
        ReactionSection(
          totalLikes: totalLikes,
          onLikePressed: onLikePressed,
          totalComments: totalComments,
          onCommentPressed: onCommentPressed,
          totlaSaves: totlaSaves,
          onSavePressed: onSavePressed,
          totalShares: totalShares,
          onSharePressed: onSharePressed,
        ),

        // Author profile, Name, Follow
        Author(
          onProfilePressed: onProfilePressed,
          profileImage: profileImage,
          authorName: authorName,
          onFollowPressed: onFollowPressed,
        ),
      ],
    );
  }
}
