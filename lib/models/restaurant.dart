import 'package:started_template_food_delivery_ui/models/food.dart';

class Restaurant {
  final String imageUrl;
  final String name;
  final String address;
  final String distance;
  final int rating;
  final List<Food> menu;
  Restaurant({
    required this.imageUrl,
    required this.distance,
    required this.name,
    required this.address,
    required this.rating,
    required this.menu,
  });
}
