import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

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

            SizedBox(
              child: PageView(
                scrollDirection: Axis.vertical,
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
            ),

            NavigationBar(),
          ],
        ),
      ),
    );
  }
}

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
          child: Image(image: NetworkImage(backgroundImage), fit: BoxFit.cover),
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

              Column(
                children: [
                  Icon(Icons.chat, color: Colors.white, size: 30),
                  Text(
                    "99k",
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.bookmark, color: Colors.white, size: 30),
                  Text(
                    "9k",
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.share_sharp, color: Colors.white, size: 30),
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

class NavigationBar extends StatelessWidget {
  const NavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(1000),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              height: MediaQuery.of(context).size.height * 0.1,
              width: double.maxFinite,

              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(1000),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Iconsax.home_1, color: Colors.white),
                  ),

                  IconButton(
                    onPressed: () {},
                    icon: Icon(Iconsax.heart, color: Colors.white),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Iconsax.user, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
