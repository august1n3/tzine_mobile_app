import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class CustomNavigationBar extends StatefulWidget {
  final int currentIndex; 
  final ValueChanged<int> onTap; 

  const CustomNavigationBar({
    super.key,
    required this.currentIndex, 
    required this.onTap
  });

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 15, left: 5, right: 5),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 65, 0, 0),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildNavItem(
            iconPath: "assets/icons/navs/Home.svg",
            selectedIconPath: "assets/icons/navs_filled/Home.svg", 
            index: 0,
            tooltip: 'Home',
          ),
          _buildNavItem(
            iconPath: "assets/icons/navs/search.svg",
            selectedIconPath: "assets/icons/navs_filled/search.svg", 
            index: 1,
            tooltip: 'Browse',
          ),
          _buildNavItem(
            iconPath: "assets/icons/navs/Favourites.svg",
            selectedIconPath: "assets/icons/navs_filled/favourites.svg", 
            index: 2,
            tooltip: 'Favourites',
          ),
          _buildNavItem(
            iconPath: "assets/icons/navs/support.svg",
            selectedIconPath: "assets/icons/navs_filled/support.svg", 
            index: 3,
            tooltip: 'Support',
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