import 'package:flutter/material.dart';
import 'package:started_template_food_delivery_ui/models/restaurant.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.restaurant});

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 220,
          child: Stack(
            children: [
              SizedBox(
                width: double.maxFinite,
                child: Image.asset(
                  restaurant.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  top: 30,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_ios),
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite),
                          color: Colors.deepOrangeAccent,
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 220,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    restaurant.name,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.w600),
                    overflow: TextOverflow.visible,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: List.generate(
                      restaurant.rating,
                      (index) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 24.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    restaurant.address,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(right: 16),
                child: Text(
                  restaurant.distance,
                  style: const TextStyle(fontSize: 14),
                  overflow: TextOverflow.visible,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(100, 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
                child: const Text(
                  "Reviews",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(100, 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
                child: const Text(
                  "Contact",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        ),
        const Text(
          "Menu",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, letterSpacing: 1),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: GridView.count(
              // Create a grid with 2 columns. If you change the scrollDirection to
              // horizontal, this produces 2 rows.
              crossAxisCount: 2,
              childAspectRatio: 1,
              shrinkWrap: true,
              crossAxisSpacing: 0.1,
              // Generate 100 widgets that display their index in the List.
              children: List.generate(restaurant.menu.length, (index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          restaurant.menu[index].imageUrl,
                          fit: BoxFit.cover,
                          height: double.maxFinite,
                        ),
                      ),
                      Container(
                        height: double.maxFinite,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.black.withOpacity(0.2),
                        ),
                      ),
                      Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            restaurant.menu[index].name,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            restaurant.menu[index].price.toString(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      )),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                minimumSize: Size.zero,
                                fixedSize: const Size(35, 35),
                                shape: const CircleBorder()),
                            child: const Icon(
                              Icons.add,
                              size: 24.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    ));
  }
}
