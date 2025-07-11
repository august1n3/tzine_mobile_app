import 'package:tzine/models/menu.dart';

class Restaurant {
  String rid;
  String name;
  String address;
  String description;
  String image;
  List<Menu> menus;

  Restaurant({
    required this.rid,
    required this.name,
    required this.address,
    required this.description,
    required this.image,
    required this.menus,
  });
}
