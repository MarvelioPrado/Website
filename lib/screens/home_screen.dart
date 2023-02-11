import 'package:flutter/material.dart';
import 'package:started_template_food_delivery_ui/data/data.dart';
import 'package:started_template_food_delivery_ui/screens/cart_screen.dart';
import 'package:started_template_food_delivery_ui/widgets/nearby_restaurants.dart';
import 'package:started_template_food_delivery_ui/widgets/recent_orders.dart';
import 'package:started_template_food_delivery_ui/widgets/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Food Delivery"),
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          iconSize: 30,
          icon: const Icon(
            Icons.account_circle,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const CartScreen(),
              ));
            },
            child: Text(
              "Cart (${currentUser.cart.length})",
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ],
      ),
      body: ListView(
        children: const [
          SearchBar(),
          RecentOrders(),
          NearbyRestaurants(),
        ],
      ),
    );
  }
}
