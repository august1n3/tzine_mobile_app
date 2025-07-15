import 'package:flutter/material.dart';
import 'package:tzine/components/navigation/restaurant_navigation_bar.dart';
import 'package:tzine/pages/favorites.dart';
import 'package:tzine/pages/browse.dart';
import 'package:tzine/pages/home.dart';
import 'package:tzine/components/navigation/navigation_bar.dart';
import 'package:tzine/pages/menu.dart';
import 'package:tzine/pages/restaurant.dart';
import 'package:tzine/pages/reviews.dart';
import 'package:tzine/pages/support.dart'; 


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tzine Demo 2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 65, 0, 0),
        ),
      ),
      home: const MainAppScreen(),
    );
  }
}

class RestaurantMainScreen extends StatefulWidget {
  const RestaurantMainScreen({super.key});

  @override
  State<RestaurantMainScreen> createState() => _RestaurantMainScreenState();
}

class _RestaurantMainScreenState extends State<RestaurantMainScreen> {
  int _currentIndex = 0; // State to track the current selected tab

  // List of your pages/screens
  final List<Widget> _pages = [
    const RestaurantScreen(),
    const MenuScreen(),
    const ReviewsScreen(), // Placeholder   // Placeholder
  ];

  // For animated transitions using PageView
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    // Animate to the selected page when a navigation item is tapped
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300), // Adjust animation speed
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(parent: BouncingScrollPhysics()),
        controller: _pageController,
        // This makes the PageView update _currentIndex when swiped
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: _pages,
      ),
      bottomNavigationBar: RestaurantNavigationBar(
        currentIndex: _currentIndex, // Pass the current index
        onTap: _onItemTapped,       // Pass the tap handler
      ),
    );
  }

  
}





class MainAppScreen extends StatefulWidget {
  const MainAppScreen({super.key});

  @override
  State<MainAppScreen> createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen> {
  int _currentIndex = 0; // State to track the current selected tab

  // List of your pages/screens
  final List<Widget> _pages = [
    const HomeScreen(),
    const BrowseScreen(),
    const FavouritesScreen(), // Placeholder
    const SupportScreen(),   // Placeholder
  ];

  // For animated transitions using PageView
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    // Animate to the selected page when a navigation item is tapped
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300), // Adjust animation speed
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(parent: BouncingScrollPhysics()),
        // This makes the PageView update _currentIndex when swiped
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: _pages,
      ),
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: _currentIndex, // Pass the current index
        onTap: _onItemTapped,       // Pass the tap handler
      ),
    );
  }
}