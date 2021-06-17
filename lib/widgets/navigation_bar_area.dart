import 'package:explore_app/utils/constants.dart';
import 'package:flutter/material.dart';

class NavigationArea extends StatefulWidget {
  const NavigationArea({Key? key}) : super(key: key);

  @override
  _NavigationAreaState createState() => _NavigationAreaState();
}

class _NavigationAreaState extends State<NavigationArea> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(49.0),
        ),
        color: navigationColor,
      ),
      padding: const EdgeInsets.all(24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/menu_icon.png'),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/search_icon.png'),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/profile_icon.png'),
          ),
        ],
      ),
    );
  }
}
