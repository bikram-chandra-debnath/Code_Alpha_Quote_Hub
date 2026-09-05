import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_hub/core/common/button/elevated_buttons.dart';
import 'package:quote_hub/features/home/presentation/bloc/quote_page/page_bloc.dart';
import 'package:quote_hub/features/home/presentation/bloc/quote_page/page_event.dart';
import 'package:quote_hub/features/home/presentation/bloc/quote_page/page_state.dart';
import 'package:quote_hub/features/home/presentation/widgets/home_appbar.dart';
import 'package:quote_hub/features/home/presentation/widgets/quotes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PageBloc(),
      child: SafeArea(
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

              // Quote
              Quotes(),
              HomeAppBar(),

              // next Button
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  child: BlocBuilder<PageBloc, PageState>(
                    builder: (context, state) {
                      final isLastPage =
                          state.currentPage == state.totalPage - 1;
                      return AppElevatedButton(
                        onPressed: () {
                          if (!isLastPage) {
                            context.read<PageBloc>().add(NextPagePressed());
                          }
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              isLastPage ? "Finished" : "Next",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.arrow_right, color: Colors.white),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
