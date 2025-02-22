import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:portfolio_website/app.dart';
import 'package:portfolio_website/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider(create: (context) => AppState())],
        child: MaterialApp(
          title: 'Daniel Lacina',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.blue,
              brightness: Brightness.dark,
            ),
          ),
          home: const PortfolioApp(),
        ));
  }
}
