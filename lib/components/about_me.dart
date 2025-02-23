import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AboutMePage extends StatefulWidget {
  const AboutMePage({super.key});

  @override
  State<AboutMePage> createState() => AboutMePageState();
}

class AboutMePageState extends State<AboutMePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text("About ",
          style: TextStyle(
              color: Colors.white, fontSize: 36, fontWeight: FontWeight.bold)),
      Text("Me",
          style: TextStyle(
              color: Colors.blue, fontSize: 36, fontWeight: FontWeight.bold))
    ]));
  }
}
