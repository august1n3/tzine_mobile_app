import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// Assuming browse.dart and home.dart define your screens
// import 'package:tzine/pages/browse.dart';
// import 'package:tzine/pages/home.dart';

class CustomNavigationBar extends StatefulWidget {
  final int currentIndex; // Add this property
  final ValueChanged<int> onTap; // Add this callback

  const CustomNavigationBar({
    super.key,
    required this.currentIndex, // Make it required
    required this.onTap, // Make it required
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
            selectedIconPath: "assets/icons/navs_filled/Home.svg", // Assuming you have a filled version
            index: 0,
            tooltip: 'Home',
          ),
          _buildNavItem(
            iconPath: "assets/icons/navs/search.svg",
            selectedIconPath: "assets/icons/navs_filled/search.svg", // Assuming you have a filled version
            index: 1,
            tooltip: 'Browse',
          ),
          _buildNavItem(
            iconPath: "assets/icons/navs/Favourites.svg",
            selectedIconPath: "assets/icons/navs_filled/favourites.svg", // Assuming you have a filled version
            index: 2,
            tooltip: 'Favourites',
          ),
          _buildNavItem(
            iconPath: "assets/icons/navs/support.svg",
            selectedIconPath: "assets/icons/navs_filled/support.svg", // Assuming you have a filled version
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
      iconSize: index == 0 ? 50 : 40, // Adjust icon sizes as per your original code
      color: const Color.fromARGB(255, 255, 255, 255),
      onPressed: () => widget.onTap(index), // Use the onTap callback
      tooltip: tooltip,
      icon: SvgPicture.asset(currentIconPath),
    );
  }
}