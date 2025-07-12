import 'package:flutter/material.dart';

class FilterButtons extends StatefulWidget {

  const FilterButtons({super.key});

  @override
  State<FilterButtons> createState() => _FilterButtonsState();
}

class _FilterButtonsState extends State<FilterButtons> {
 
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      spacing: 10,
      children: [
        TextButton(
          onPressed: null,
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(
              Color.fromARGB(255, 65, 0, 0),
            ),
          ),
          child: Text(
            "Top rated",
            style: TextStyle(
              height: 0.9,
              fontSize: 24,
              fontFamily: 'Caveat',
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
        TextButton(
          onPressed: null,
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(
              Color.fromARGB(255, 255, 233, 233),
            ),
          ),
          child: Text(
            "New to you",
            style: TextStyle(
              height: 0.9,
              fontSize: 24,
              fontFamily: 'Caveat',
              color: Color.fromARGB(255, 65, 0, 0),
            ),
          ),
        ),
        TextButton(
          onPressed: null,
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(
              Color.fromARGB(255, 255, 233, 233),
            ),
          ),
          child: Text(
            "Best dishes",
            style: TextStyle(
              height: 0.9,
              fontSize: 24,
              fontFamily: 'Caveat',
              color: Color.fromARGB(255, 65, 0, 0),
            ),
          ),
        ),
      ],
    );
  }
}
