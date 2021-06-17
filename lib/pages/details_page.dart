import 'package:explore_app/data/data.dart';
import 'package:explore_app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final PlanetInfo _planetInfo;

  DetailsPage(this._planetInfo);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            SingleChildScrollView(
              clipBehavior: Clip.antiAlias,
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 300,
                        ),
                        Text(
                          _planetInfo.name,
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 62.0,
                            letterSpacing: 1.3,
                            color: primaryTextColor,
                            fontWeight: FontWeight.w900,
                          ),
                          textScaleFactor: 1.1,
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          'Solar System',
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 32.0,
                            letterSpacing: 1.2,
                            fontWeight: FontWeight.w300,
                            color: primaryTextColor,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Divider(
                          color: Colors.black38,
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            _planetInfo.description,
                            style: TextStyle(
                                fontFamily: 'Metropolis',
                                fontSize: 20,
                                color: contentTextColor,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1.1),
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Divider(
                          color: Colors.black38,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Text(
                      'Gallery',
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontSize: 26,
                        color: secondaryTextColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 32.0),
                    height: 250,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _planetInfo.images.length,
                        itemBuilder: (context, index) {
                          return Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32)),
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Image.network(
                                _planetInfo.images[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
            Positioned(
              child: Text(
                _planetInfo.position.toString(),
                style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontSize: 247,
                  fontWeight: FontWeight.w900,
                  color: primaryTextColor.withOpacity(0.15),
                ),
              ),
              top: 60,
              left: 32,
            ),
            Positioned(
              right: -64,
              child: Hero(
                tag: _planetInfo.position,
                child: Image.asset(_planetInfo.iconImage),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22.0, top: 10.0),
              child: IconButton(
                icon: Icon(CupertinoIcons.arrow_left),
                iconSize: 30.0,
                color: navigationColor,
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
