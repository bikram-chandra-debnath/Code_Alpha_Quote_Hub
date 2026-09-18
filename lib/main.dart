import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_hub/core/router/app_routers.dart';
import 'package:quote_hub/core/utils/theme/theme.dart';
import 'package:quote_hub/features/home/presentation/bloc/quotes/quotes_bloc.dart';
import 'package:quote_hub/features/home/presentation/bloc/quotes/qutoes_event.dart';
import 'package:quote_hub/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    BlocProvider(
      create: (context) => QuoteBloc()..add(FetchQuotesEvent()),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: routes,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}
