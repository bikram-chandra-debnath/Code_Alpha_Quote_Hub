import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_hub/features/home/presentation/bloc/quote_page/page_bloc.dart';
import 'package:quote_hub/features/home/presentation/bloc/quote_page/page_state.dart';
import 'package:quote_hub/features/home/presentation/widgets/quote_card.dart';

class Quotes extends StatefulWidget {
  const Quotes({super.key});

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          child: BlocListener<PageBloc, PageState>(
            listenWhen: (previous, current) =>
                previous.currentPage != current.currentPage,

            listener: (context, state) {
              if (_pageController.hasClients &&
                  _pageController.page?.round() != state.currentPage) {
                _pageController.animateToPage(
                  state.currentPage,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              }
            },
            child: PageView(
              controller: _pageController,
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
                  onProfilePressed: () {},
                  onAuthorNamePressed: () {},
                  onFollowPressed: () {},
                  authorName: 'White House',
                  totalLikes: '10k',
                  totalComments: '300',
                  totlaSaves: '78',
                  totalShares: '55',
                  onLikePressed: () {},
                  onCommentPressed: () {},
                  onSavePressed: () {},
                  onSharePressed: () {},
                ),
              ),
            ),
          ),
        ),

      ],
    );
  }
}
