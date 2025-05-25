import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tzine Demo 1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 65, 0, 0),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // ignore: unused_field
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: 2,
          children: [
            Text(
              ' Good\n Afternoon',
              style: TextStyle(
                height: 0.9,
                fontSize: 42,
                fontFamily: 'Caveat',
                color: Color.fromARGB(255, 65, 0, 0),
              ),
            ),
            SvgPicture.asset("assets/icons/logo-light.svg"),
          ],
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment:  CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10),
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
            Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
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
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 10,bottom: 15, left: 5, right: 5),
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
              icon: SvgPicture.asset("assets/icons/navs/search.svg")
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
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
