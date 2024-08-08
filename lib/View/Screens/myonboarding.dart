import 'package:flutter/material.dart';

class myOnboarding extends StatefulWidget {
  const myOnboarding({super.key});

  @override
  State<myOnboarding> createState() => _myOnboardingState();
}

class _myOnboardingState extends State<myOnboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F1EF),
     body: Container(
         height: double.infinity,

         child: Image.asset("assets/images/1.png",fit: BoxFit.fitHeight,)),
    );
  }
}
