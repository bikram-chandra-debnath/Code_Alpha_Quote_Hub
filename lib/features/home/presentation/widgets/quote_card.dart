import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class PageCard extends StatelessWidget {
  const PageCard({
    super.key,
    required this.backgroundImage,
    required this.quote,
    required this.profileImage,
  });

  final String backgroundImage, quote, profileImage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.maxFinite,
          child: Image(
            image: NetworkImage(backgroundImage),
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) {
                return child;
              } else {
                return Expanded(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black),
                  ),
                );
              }
            },
          ),
        ),
        // Quote Text
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 55),
            child: Stack(
              children: <Widget>[
                // Solid text as fill.
                Text(
                  quote,
                  style: TextStyle(fontSize: 35, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        // Right side bar
        Align(
          alignment: Alignment.bottomRight,
          child: Column(
            spacing: 24,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(height: 80),
                  IconButton(
                    onPressed: () {},
                    icon: CircleAvatar(
                      maxRadius: 30,
                      backgroundImage: NetworkImage(profileImage),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add, size: 20),
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.zero,
                        maximumSize: Size(30, 30),
                        minimumSize: Size(25, 25),
                        fixedSize: Size(10, 10),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                    ),
                  ),
                ],
              ),
              // Comment
              Column(
                children: [
                  Icon(Iconsax.message, color: Colors.white, size: 30),
                  Text(
                    "99k",
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.white),
                  ),
                ],
              ),
              // Save
              Column(
                children: [
                  Icon(Iconsax.bookmark, color: Colors.white, size: 30),
                  Text(
                    "9k",
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.white),
                  ),
                ],
              ),
              // share
              Column(
                children: [
                  Icon(Iconsax.send_1, color: Colors.white, size: 30),
                  Text(
                    "19k",
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.white),
                  ),
                ],
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.12),
            ],
          ),
        ),
      ],
    );
  }
}
