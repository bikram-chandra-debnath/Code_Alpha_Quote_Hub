import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({
    super.key,
    this.onPressed,
    this.size = 24,
    required this.image,
  });
  final VoidCallback? onPressed;
  final double size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: CircleAvatar(radius: size, backgroundImage: NetworkImage(image)),
    );
  }
}
