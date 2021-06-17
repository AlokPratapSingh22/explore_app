import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/navigation_bar_area.dart';
import '../widgets/planet_card.dart';
import '../widgets/title_subtitle.dart';
import '../utils/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradientEndColor,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              gradientStartColor,
              gradientEndColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.3, 0.7],
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleSubtitle(),
              PlanetCard(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationArea(),
    );
  }
}
