import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:portfolio_website/components/navbar.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 30,
            children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Hi, I'm Daniel Lacina",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
            AnimatedTextKit(animatedTexts: [
              ColorizeAnimatedText("Software Developer",
                  textStyle:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  colors: [Colors.blue, Colors.white])
            ]),
            Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "I create bots and websites.",
                ))
          ]),
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/images/profile_picture.jpg',
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
              Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      center: Alignment.center,
                      radius: 1,
                      colors: [
                        Colors.blue.withOpacity(.1),
                        Colors.black,
                      ],
                      stops: [0.0, .8],
                    ),
                  ))
            ],
          )
        ]));
  }
}
