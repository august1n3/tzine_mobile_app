import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 15, left: 5, right: 5),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 65, 0, 0),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            iconSize: 50,
            color: Color.fromARGB(255, 255, 255, 255),
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            icon: SvgPicture.asset("assets/icons/navs/Home.svg"),
          ),
          IconButton(
            iconSize: 40,
            color: Color.fromARGB(255, 255, 255, 255),
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            icon: SvgPicture.asset("assets/icons/navs/search.svg"),
          ),
          IconButton(
            color: Color.fromARGB(255, 255, 255, 255),
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            icon: SvgPicture.asset("assets/icons/navs/Favourites.svg"),
          ),
          IconButton(
            iconSize: 40,
            color: Color.fromARGB(255, 255, 255, 255),
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            icon: SvgPicture.asset("assets/icons/navs/support.svg"),
          ),
        ],
      ),
    );
  }
}
