import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:portfolio_website/components/navbar.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

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
            const Description(),
            Container(
                margin: EdgeInsets.only(top: 30), child: ContactMeButtons())
          ]),
          const ProfilePicture()
        ]));
  }
}

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Hi, I'm Daniel Lacina",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
      AnimatedTextKit(animatedTexts: [
        ColorizeAnimatedText("Software Developer",
            textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            colors: [Colors.blue, Colors.white])
      ]),
      Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            "I create bots and websites.",
          )),
    ]);
  }
}

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
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
    ]);
  }
}

class ContactMeButtons extends StatelessWidget {
  const ContactMeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(spacing: 10, children: [
      ContactMeButton(
          backgroundColor: Colors.blue,
          textColor: Theme.of(context).scaffoldBackgroundColor,
          label: "Hire Me"),
      ContactMeButton(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          textColor: Colors.blue,
          label: "Let's Talk"),
    ]);
  }
}

class ContactMeButton extends StatefulWidget {
  const ContactMeButton(
      {super.key,
      required this.textColor,
      required this.backgroundColor,
      required this.label});
  final Color textColor;
  final Color backgroundColor;
  final String label;
  @override
  State<ContactMeButton> createState() => ContactMeButtonState();
}

class ContactMeButtonState extends State<ContactMeButton> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (_) => setState(() {
              isHovered = true;
            }),
        onExit: (_) => setState(() {
              isHovered = false;
            }),
        child: AnimatedButton(
          onPress: () {},
          animatedOn: AnimatedOn.onHover,
          height: 50,
          width: 150,
          text: widget.label,
          isReverse: true,
          selectedTextColor: widget.backgroundColor,
          transitionType: TransitionType.LEFT_TO_RIGHT,
          textStyle: TextStyle(
              color: widget.textColor,
              fontSize: 17.5,
              fontWeight: FontWeight.w500),
          backgroundColor: widget.backgroundColor,
          borderColor: widget.textColor,
          borderRadius: 0,
          borderWidth: 2,
        ));
  }
}
