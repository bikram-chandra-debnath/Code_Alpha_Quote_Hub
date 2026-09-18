import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quote_hub/core/common/widgets/app_logo.dart';
import 'package:quote_hub/core/constants/colors.dart';
import 'package:quote_hub/core/router/route_name.dart';
import 'package:quote_hub/core/utils/helpers/helper_function.dart';
import 'package:quote_hub/features/home/presentation/bloc/quotes/quotes_bloc.dart';
import 'package:quote_hub/features/home/presentation/bloc/quotes/quotes_state.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunction.isDarkMode(context);
    return Scaffold(
      body: BlocListener<QuoteBloc, QuoteState>(
        listener: (context, state) {
          if (state is QuoteLoadedState) {
            context.replaceNamed(RouteName.homePage);
          }
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppLogo(logoColor: isDark ? AppColors.white : AppColors.black),
              SizedBox(height: 100),
              BlocBuilder<QuoteBloc, QuoteState>(
                builder: (context, state) {
                  if (state is QuoteLoadingState) {
                    return CircularProgressIndicator(color: AppColors.primary);
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
                  }

                  return const Center(child: Text('Initializing...'));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
