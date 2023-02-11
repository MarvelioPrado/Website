import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
          decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 15),
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(width: 0.8)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
                width: 0.8, color: Theme.of(context).colorScheme.primary)),
        hintText: 'Search Food or Restaurants',
        prefixIcon: const Icon(
          Icons.search,
          size: 24,
        ),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.clear,
          ),
        ),
      )),
    );
  }
}
