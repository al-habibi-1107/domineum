import 'package:domineum/pages/sections/landing.dart';
import 'package:domineum/pages/sections/profile.dart';
import 'package:domineum/pages/sections/section-3.dart';
import 'package:domineum/pages/sections/section-4.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [LandingPage(), ProfileSection(), Section3(), Section4()],
      ),
    );
  }
}
