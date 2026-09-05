
import 'package:flutter/material.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({
    super.key,
    this.onPressed,
    this.size = 40,
    required this.icon,
    this.iconColor = Colors.white,
    this.isNewNotification = false,
  });

  final VoidCallback? onPressed;
  final double size;
  final IconData icon;
  final Color iconColor;
  final bool isNewNotification;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black.withValues(alpha: 0.2),
        ),
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(height: size, width: size),
              Icon(icon, color: Colors.white),
              Positioned(
                top: 10,
                right: 11,
                child: isNewNotification
                    ? Container(
                        height: 10,
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      )
                    : SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
