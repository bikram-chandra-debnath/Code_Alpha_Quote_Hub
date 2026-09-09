import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_hub/features/home/presentation/bloc/quote_page/page_bloc.dart';
import 'package:quote_hub/features/home/presentation/bloc/quote_page/page_event.dart';
import 'package:quote_hub/features/home/presentation/bloc/quote_page/page_state.dart';
import 'package:quote_hub/features/home/presentation/bloc/quotes/quotes_bloc.dart';
import 'package:quote_hub/features/home/presentation/bloc/quotes/quotes_state.dart';
import 'package:quote_hub/features/home/presentation/bloc/quotes/qutoes_event.dart';
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
    context.read<QuoteBloc>().add(FetchQuotesEvent());
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
            child: BlocBuilder<QuoteBloc, QuoteState>(
              builder: (context, state) {
                if (state is QuoteLoadingState) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (state is QuoteErrorState) {
                  return Center(
                    child: Text('Something went wrong: ${state.message}'),
                  );
                }

                if (state is QuoteLoadedState) {
                  if (state.quotes.isEmpty) {
                    return const Center(child: Text('No quotes found.'));
                  }

                  final quotesList = state.quotes;

                  return RefreshIndicator(
                    onRefresh: () async {
                      context.read<QuoteBloc>().add(FetchQuotesEvent());
                    },
                    child: PageView(
                      controller: _pageController,
                      scrollDirection: Axis.horizontal,
                      pageSnapping: true,
                      onPageChanged: (value) {
                        context.read<PageBloc>().add(
                          OnScrollEvent(index: value),
                        );
                      },

                      children: List.generate(quotesList.length, (index) {
                        final currentQuote = quotesList[index];
                        return PageCard(
                          backgroundImage:
                              "https://cdn.pixabay.com/photo/2022/10/12/07/53/youtube-background-7515934_1280.jpg",
                          quote: currentQuote.text,
                          authorName: currentQuote.author,
                        );
                      }),
                    ),
                  );
                }

                return const Center(child: Text('Initializing...'));
              },
            ),
          ),
        ),
      ],
    );
  }
}
