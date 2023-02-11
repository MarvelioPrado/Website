import 'package:flutter/material.dart';
import 'package:started_template_food_delivery_ui/data/data.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cart (${currentUser.cart.length})'),
          centerTitle: true,
          actions: const [],
        ),
        body: ListView());
  }
}
