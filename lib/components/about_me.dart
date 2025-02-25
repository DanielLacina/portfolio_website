import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:glowy_borders/glowy_borders.dart';

class AboutMePage extends StatefulWidget {
  const AboutMePage({super.key});

  @override
  State<AboutMePage> createState() => AboutMePageState();
}

class AboutMePageState extends State<AboutMePage> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      const Title(),
      const SizedBox(height: 10),
      const ProfilePicture(),
      const SizedBox(height: 10),
      Text("Software Developer",
          style: TextStyle(
              fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white)),
      const SizedBox(height: 10),
      Text("I'm passionate about ml/ai and software engineering.",
          style: TextStyle(fontSize: 16)),
    ]);
  }
}

class Title extends StatelessWidget {
  const Title({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text("About ",
          style: TextStyle(
              color: Colors.white, fontSize: 48, fontWeight: FontWeight.bold)),
      Text("Me",
          style: TextStyle(
              color: Colors.blue, fontSize: 48, fontWeight: FontWeight.bold))
    ]));
  }
}

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedGradientBorder(
        borderSize: 1,
        glowSize: 1,
        borderRadius: BorderRadius.all(Radius.circular(999)),
        gradientColors: [Colors.blue, Colors.transparent],
        child: AnimatedGradientBorder(
            borderSize: 1,
            glowSize: 1,
            borderRadius: BorderRadius.all(Radius.circular(999)),
            gradientColors: [Colors.blue],
            child: Container(
                child: ClipOval(
                    child: Image.asset(
              'assets/images/profile_picture.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            )))));
  }
}
