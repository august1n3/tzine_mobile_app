import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tzine/main.dart';

class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({super.key});

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset("assets/images/Rectangle4.png"),
          SizedBox(height: 10),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Burger 53 Tanzania",
                    style: TextStyle(
                    height: 0.9,
                    fontSize: 34,
                    fontFamily: 'Caveat',
                    color: Color.fromARGB(255, 65, 0, 0),
                    ),
                  ),
                  SizedBox(height:5),
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
              SizedBox(width: 30),
              IconButton(
                onPressed: null, 
                icon: Icon(
                  Icons.phone,
                  size: 40,
                  color: Color.fromARGB(255, 65, 0, 0),
                ),
              ),
              IconButton(
                onPressed: null, 
                icon: Icon(
                  Icons.message,
                  size: 40,
                  color: Color.fromARGB(255, 65, 0, 0),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.black
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempus porttitor posuere. Maecenas elit risus, efficitur vel vestibulum sed, tempus eu erat. Proin gravida quam pretium ipsum ullamcorper molestie. Aenean scelerisque sed augue",
            style: TextStyle(
            height: 0.9,
            fontSize:24,
            fontFamily: 'Caveat',
            color: Color.fromARGB(255, 65, 0, 0),
            ),
          ),
        ],
      ),
    );
  }
}