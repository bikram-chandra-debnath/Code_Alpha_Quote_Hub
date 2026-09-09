import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_hub/core/common/button/elevated_buttons.dart';
import 'package:quote_hub/features/home/presentation/bloc/quote_page/page_bloc.dart';
import 'package:quote_hub/features/home/presentation/bloc/quote_page/page_event.dart';
import 'package:quote_hub/features/home/presentation/bloc/quote_page/page_state.dart';

class NewQuote extends StatelessWidget {
  const NewQuote({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: BlocBuilder<PageBloc, PageState>(
          builder: (context, state) {
            return AppElevatedButton(
              onPressed: () {
                context.read<PageBloc>().add(NextPagePressed());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "New Quote",
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
    );
  }
}
