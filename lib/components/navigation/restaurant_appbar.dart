import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RestaurantAppBar extends StatefulWidget {
  const RestaurantAppBar({super.key});

  @override
  State<RestaurantAppBar> createState() => _RestaurantAppBarState();
}

class _RestaurantAppBarState extends State<RestaurantAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 0,
        children: [
          Text(
            'Good\nAfternoon',
            style: TextStyle(
              height: 0.9,
              fontSize: 35,
              fontFamily: 'Caveat',
              color: Color.fromARGB(255, 65, 0, 0),
            ),
          ),
          SvgPicture.asset("assets/icons/logo-light.svg"),
        ],
      );
  }
}