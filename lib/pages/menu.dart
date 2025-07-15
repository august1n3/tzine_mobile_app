import 'package:flutter/material.dart';
import 'package:tzine/main.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(builder: (context) => MainAppScreen() ));
              }, 
              icon: Icon(
                Icons.arrow_back_ios,
                size: 40,
                color: Color.fromARGB(255, 255, 255, 255),
              )
            ),
            Text(
              "Restaurant Name",
              style: TextStyle(
                height: 0.9,
                fontSize: 24,
                fontFamily: 'Caveat',
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            IconButton(
              onPressed: null, 
              icon: Icon(
                Icons.favorite_outline_outlined,
                size: 40,
                color: Color.fromARGB(255, 255, 255, 255),
              )
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/images/Rectangle4.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: 110,
            alignment: Alignment.bottomCenter,
          ),
          SizedBox(height: 10),
        ]
      )
    );
  }
}