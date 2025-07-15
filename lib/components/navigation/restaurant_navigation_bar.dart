import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RestaurantNavigationBar extends StatefulWidget {
  final int currentIndex; 
  final ValueChanged<int> onTap; 

  const RestaurantNavigationBar({
    super.key,
    required this.currentIndex, 
    required this.onTap
  });

  @override
  State<RestaurantNavigationBar> createState() => _RestaurantNavigationBarState();
}

class _RestaurantNavigationBarState extends State<RestaurantNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.fromLTRB(45, 0, 45, 15),
      padding: const EdgeInsets.only(top: 0, bottom: 0, left: 0, right: 0),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 65, 0, 0),
        borderRadius: BorderRadius.all(Radius.circular(40))
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        spacing: 5,
        children: [
          _buildNavItem(
            iconPath: "assets/icons/navs/info.svg",
            selectedIconPath: "assets/icons/navs_filled/info.svg", 
            index: 0,
            tooltip: 'Info',
          ),
          _buildNavItem(
            iconPath: "assets/icons/navs/menu.svg",
            selectedIconPath: "assets/icons/navs_filled/menu.svg", 
            index: 1,
            tooltip: 'Reviews',
          ),
          _buildNavItem(
            iconPath: "assets/icons/navs/reviews.svg",
            selectedIconPath: "assets/icons/navs_filled/reviews.svg", 
            index: 2,
            tooltip: 'Menu',
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required String iconPath,
    required String selectedIconPath,
    required int index,
    required String tooltip,
  }) {
    final bool isSelected = widget.currentIndex == index;
    final String currentIconPath = isSelected ? selectedIconPath : iconPath;

    return IconButton(
      iconSize: index == 0 ? 50 : 40, 
      color: const Color.fromARGB(255, 255, 255, 255),
      onPressed: () => widget.onTap(index), 
      tooltip: tooltip,
      icon: SvgPicture.asset(currentIconPath),
    );
  }
}