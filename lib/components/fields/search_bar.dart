import 'package:flutter/material.dart';

class SearchInputField extends StatefulWidget {
  const SearchInputField({super.key});

  @override
  State<SearchInputField> createState() => _SearchInputFieldState();

}

class _SearchInputFieldState extends State<SearchInputField> {
  
  @override
  Widget build(BuildContext context) {
    final Color baseColor = Color.fromARGB(255, 65, 0, 0);
    final Color lighterBaseColor = Color.fromARGB(255, 255, 233, 233);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: lighterBaseColor,
          suffixIcon: Icon(Icons.search, color: baseColor),
          hintText: 'Search...',
          hintStyle: TextStyle(color: baseColor),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 20.0,
          ), // Adjust padding
        ),
        style: TextStyle(color: baseColor, fontSize: 16.0),
        cursorColor: baseColor,
      ),
    );
  }
}
