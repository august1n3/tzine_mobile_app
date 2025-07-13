import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tzine/components/navigation/custom_appbar.dart';

class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({super.key});

  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomAppBar(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                spacing: 5,
                children: [
                  TextButton(
                    onPressed: null,
                    style: ButtonStyle(
              
                      backgroundColor: WidgetStateProperty.all<Color>(Color.fromARGB(255, 65, 0, 0)),
                    ), 
                    child: Text(
                      "Restaurants",
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
                      "Dishes",
                        style: TextStyle(
                        height: 0.9,
                        fontSize: 24,
                        fontFamily: 'Caveat',
                        color: Color.fromARGB(255, 65, 0, 0),
                      ),
                      ))
                ]
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Container(
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
                              Text("Burger 53 Tanzania",
                              style: TextStyle(
                                height: 0.9,
                                fontSize: 24,
                                fontFamily: 'Caveat',
                                color: Color.fromARGB(255, 65, 0, 0),
                              ),),
                              Text("Mbuyuni, Dar es salaam",
                              style: TextStyle(
                                height: 0.9,
                                fontSize: 18,
                                fontFamily: 'Caveat',
                                color: Color.fromARGB(255, 202, 103, 103),
                              ),)
                            ],
                          ),
                          Column(
                            children: [
                              SvgPicture.asset("assets/icons/star.svg"),
                              Text("4.5",
                              style: TextStyle(
                                height: 0.9,
                                fontSize: 24,
                                fontFamily: 'Caveat',
                                color: Color.fromARGB(255, 65, 0, 0),
                              ),)
                            ],
                          )
                        ],
                      )

                    ],
                  ),
                )
              ],
            ),

          ],
        ),
      )
    );
  }
}