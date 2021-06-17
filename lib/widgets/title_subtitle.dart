import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleSubtitle extends StatelessWidget {
  const TitleSubtitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Explore',
            style: TextStyle(
              fontFamily: 'Metropolis',
              fontSize: 44.0,
              color: const Color(0xFFFFFFFF),
              fontWeight: FontWeight.w900,
              height: 1.36,
            ),
            textAlign: TextAlign.left,
          ),
          DropdownButton(
            items: [
              DropdownMenuItem(
                child: Text(
                  'Solar System',
                  style: TextStyle(
                    fontFamily: 'Metropolis',
                    fontSize: 24.0,
                    color: const Color(0x7cdbf1ff),
                    fontWeight: FontWeight.w500,
                    height: 1.38,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
            underline: SizedBox(),
            icon: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Icon(CupertinoIcons.arrow_down),
            ),
          ),
        ],
      ),
    );
  }
}
