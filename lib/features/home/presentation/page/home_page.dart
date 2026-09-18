import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_hub/core/utils/helpers/device_helper.dart';
import 'package:quote_hub/features/home/presentation/bloc/quotes/quotes_bloc.dart';
import 'package:quote_hub/features/home/presentation/bloc/quotes/qutoes_event.dart';
import 'package:quote_hub/features/home/presentation/widgets/new_quote_button.dart';
import 'package:quote_hub/features/home/presentation/widgets/quotes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: RefreshIndicator(
          onRefresh: () async =>
              context.read<QuoteBloc>().add(FetchQuotesEvent()),
          child: Stack(
            children: [
              Container(
                height: AppDeviceHelper.getAppBarHeight(),
                width: double.maxFinite,

                decoration: BoxDecoration(),
              ),

              Quotes(),
              NewQuote(),
            ],
          ),
        ),
      ),
    );
  }
}
