import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:portfolio_website/provider.dart';
import 'package:portfolio_website/components/home.dart';
import 'package:portfolio_website/components/navbar.dart';

class PortfolioApp extends StatefulWidget {
  const PortfolioApp({super.key});

  @override
  State<PortfolioApp> createState() => _PortfolioAppState();
}

class _PortfolioAppState extends State<PortfolioApp> {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppState>();
    Widget page;
    switch (appState.selectedItem) {
      case "Home":
        page = HomePage();
        break;
      default:
        page = Placeholder();
        break;
    }
    ;
    return Scaffold(body: Column(children: [NavBar(), page]));
  }
}
