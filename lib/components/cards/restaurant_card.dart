import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tzine/main.dart';

class RestaurantCard extends StatefulWidget {
  const RestaurantCard({super.key});

  @override
  State<RestaurantCard> createState() => _RestaurantCardState();
}

class _RestaurantCardState extends State<RestaurantCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Timer(const Duration(seconds: 2), () {
         Navigator.pushReplacement(
          context, 
          MaterialPageRoute(builder: (context) => RestaurantMainScreen() )
        );
        });
      },
      borderRadius: BorderRadius.horizontal(left: Radius.circular(20), right: Radius.circular(20)),
      splashColor: Color.fromARGB(141, 87, 6, 37),
      child: Container(
        margin: EdgeInsets.all(8),
        width: (MediaQuery.of(context).size.width * 0.9),
        height: (MediaQuery.of(context).size.height * 0.27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: (MediaQuery.of(context).size.height * 0.2),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Rectangle4.png"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.horizontal(left: Radius.circular(20), right: Radius.circular(20)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Burger 53 Tanzania",
                      style: TextStyle(
                        height: 0.9,
                        fontSize: 24,
                        fontFamily: 'Caveat',
                        color: Color.fromARGB(255, 65, 0, 0),
                      ),
                    ),
                    Text(
                      "Mbuyuni, Dar es salaam",
                      style: TextStyle(
                        height: 0.9,
                        fontSize: 18,
                        fontFamily: 'Caveat',
                        color: Color.fromARGB(255, 202, 103, 103),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/star.svg"
                      ),
                    Text(
                      "4.5",
                      style: TextStyle(
                        height: 0.9,
                        fontSize: 24,
                        fontFamily: 'Caveat',
                        color: Color.fromARGB(255, 65, 0, 0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
