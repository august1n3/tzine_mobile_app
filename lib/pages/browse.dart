import 'package:flutter/material.dart';
import 'package:tzine/components/navigation/custom_appbar.dart';
import 'package:tzine/components/navigation/navigation_bar.dart';
import 'package:tzine/components/fields/search_bar.dart';
class BrowseScreen extends StatefulWidget {
  const BrowseScreen({super.key});

  @override
  State<BrowseScreen> createState() => _BrowseScreenState();
}

class _BrowseScreenState extends State<BrowseScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomAppBar(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Browse',
            ),
          ],
        ),
      ),
      floatingActionButton: SearchInputField(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}