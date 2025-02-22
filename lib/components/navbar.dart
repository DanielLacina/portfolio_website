import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:portfolio_website/provider.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => NavBarState();
}

class NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(right: 400, top: 35),
            child: Text("Daniel L.",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 30,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                          blurRadius: 10,
                          color: Colors.blue,
                          offset: Offset(2, 2))
                    ])),
          ),
          Container(
              padding: EdgeInsets.all(50),
              child: Row(spacing: 50, children: [
                NavBarItem(label: "Home"),
                NavBarItem(label: "About"),
                NavBarItem(label: "Skills"),
                NavBarItem(label: "Contact")
              ]))
        ]);
  }
}

class NavBarItem extends StatefulWidget {
  const NavBarItem({super.key, required this.label});
  final String label;
  @override
  State<NavBarItem> createState() => NavBarItemState();
}

class NavBarItemState extends State<NavBarItem> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppState>();
    return MouseRegion(
        onEnter: (_) => setState(() {
              isHovered = true;
            }),
        onExit: (_) => setState(() {
              isHovered = false;
            }),
        child: GestureDetector(
            onTap: () {
              appState.setSelectedItem(widget.label);
            },
            child: AnimatedDefaultTextStyle(
              duration: Duration(milliseconds: 100),
              style: TextStyle(
                  fontSize: 20,
                  color: isHovered
                      ? Colors.blue
                      : Theme.of(context).textTheme.bodyLarge?.color),
              child: Text(widget.label),
            )));
  }
}
