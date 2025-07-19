import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tzine/components/cards/restaurant_card.dart';
import 'package:tzine/components/navigation/custom_appbar.dart';
import 'package:tzine/main.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor:  Color.fromARGB(255, 255, 241, 241),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: CustomAppBar()
      ),
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            spacing: 10,
            children: [
              TextButton(
                onPressed: null,
                style: ButtonStyle(
            
                  backgroundColor: WidgetStateProperty.all<Color>(Color.fromARGB(255, 65, 0, 0)),
                ), 
                child: Text(
                  "Top rated",
                    style: TextStyle(
                    height: 0.9,
                    fontSize: 24,
                    fontFamily: 'Caveat',
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  )),
              TextButton(
                onPressed: null,
                style: ButtonStyle(
            
                  backgroundColor: WidgetStateProperty.all<Color>(Color.fromARGB(255, 255, 233, 233)),
                ), 
                child: Text(
                  "New to you",
                    style: TextStyle(
                    height: 0.9,
                    fontSize: 24,
                    fontFamily: 'Caveat',
                    color: Color.fromARGB(255, 65, 0, 0),
                  ),
                  )),
              TextButton(
                onPressed: null,
                style: ButtonStyle(
            
                  backgroundColor: WidgetStateProperty.all<Color>(Color.fromARGB(255, 255, 233, 233)),
                ), 
                child: Text(
                  "Best dishes",
                    style: TextStyle(
                    height: 0.9,
                    fontSize: 24,
                    fontFamily: 'Caveat',
                    color: Color.fromARGB(255, 65, 0, 0),
                  ),
                  ))
            
            ]
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Text(
              'Top rated restaurants',
              style: TextStyle(
                height: 0.9,
                fontSize: 36,
                fontFamily: 'Caveat',
                color: Color.fromARGB(255, 103, 54, 54),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              SizedBox(
                height: 410,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(), // Wrap the Column with SingleChildScrollView
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                            // Add multiple RestaurantCard widgets here
                      RestaurantCard(),
                      SizedBox(height: 10),
                      RestaurantCard(),
                      SizedBox(height: 10),
                      RestaurantCard(),
                      SizedBox(height: 10),
                      RestaurantCard(),
                      SizedBox(height: 10),
                      RestaurantCard(),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ), 
            ],
          )
        ],
      ),
    );
  }
}