import 'package:explore_app/data/data.dart';
import 'package:explore_app/pages/details_page.dart';
import 'package:explore_app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class PlanetCard extends StatelessWidget {
  const PlanetCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      padding: const EdgeInsets.only(left: 32.0),
      child: Swiper(
        itemCount: planets.length,
        itemWidth: MediaQuery.of(context).size.width - 2 * 64,
        layout: SwiperLayout.STACK,
        pagination: SwiperPagination(
          builder: DotSwiperPaginationBuilder(
              activeSize: 20.0,
              color: Colors.white54,
              activeColor: Colors.white),
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Navigator.push(context, PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) {
                return DetailsPage(planets[index]);
              },
            )),
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    Card(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32)),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            Text(
                              planets[index].name,
                              style: TextStyle(
                                fontFamily: 'Metropolis',
                                fontSize: 44,
                                color: const Color(0xff47455f),
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              'Solar System',
                              style: TextStyle(
                                fontFamily: 'Metropolis',
                                fontSize: 23,
                                color: primaryTextColor,
                                fontWeight: FontWeight.w300,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Know More",
                                  style: TextStyle(
                                    fontFamily: 'Metropolis',
                                    fontSize: 18,
                                    color: const Color(0xffe4979e),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  CupertinoIcons.arrow_right,
                                  color: secondaryTextColor,
                                  size: 20.0,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                  ],
                ),
                Hero(
                  tag: planets[index].position,
                  child: Image.asset(planets[index].iconImage),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
