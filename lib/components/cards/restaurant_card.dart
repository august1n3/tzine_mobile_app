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
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => RestaurantMainScreen()),
        );
      },
      hoverColor: Color.fromARGB(255, 65, 0, 0),
      splashColor: Color.fromARGB(255, 65, 0, 0),
      child: Container(
        margin: EdgeInsets.fromLTRB(20, 0, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/cover.png"),
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
                    SvgPicture.asset("assets/icons/star.svg"),
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
