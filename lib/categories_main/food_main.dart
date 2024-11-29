import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../food_components/food_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 60.0, left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(233, 237, 238, 1),
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      Icons.arrow_back_rounded,
                      color: Color.fromRGBO(13, 25, 29, 1),
                    ),
                  ),
                ),

              ],
            ),
            const SizedBox(height: 40),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    width: 300,
                    height: 300,
                    child: Lottie.asset('assets/food.json'),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Good food\n Fast delivery",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      height: 1.2,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              "Restaurants",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 20),
            const RestaurantList(),
            const SizedBox(height: 40),
            const Text(
              "Category",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 30),
            const FoodCategories(),
            const SizedBox(height: 40),
            const Text(
              "Popular Now",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 20),
            const FoodHorizontalList(),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class FoodCategories extends StatelessWidget {
  const FoodCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset("assets/foood.png",width:120 ,height: 100,),
          Image.asset("assets/food2.png",width:150 ,height: 150,),
          Image.asset("assets/food3.png",width:150 ,height: 150,),
          Image.asset("assets/food4png.png",width:150 ,height: 150,),



        ],
      ),
    );
  }

  Widget _buildCategory({required String imageUrl, required String title}) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.network(imageUrl, fit: BoxFit.cover),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class RestaurantList extends StatelessWidget {
  const RestaurantList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> restaurants = [
      {
        'name': 'Royal Cuisine',
        'image':
        'https://www.moumachi.com.bd/images/listings/38800/profile/20233-royal-cuisine-restaurant-logo.png',
      },
      {
        'name': 'Bella Italia',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQV3-AxJTC3MuySHIXPkCQwK6Db6LS2J60XNg&s',
      },
      {
        'name': 'Spice Garden',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWoUMPX30Uk1KvFbkJkNlfqTgIg-Yb-lj3Wg&s',
      },
      {
        'name': 'Mountain View',
        'image':
            'https://s3-us-west-2.amazonaws.com/mfcollectnew/ChIJDwO1HHsBtokRHc2rb8q5aYY/4TZeAvy8Z2.png',
      },
    ];

    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          final restaurant = restaurants[index];
          return Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 4,
              child: SizedBox(
                width: 140,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(16),
                      ),
                      child: Image.network(
                        restaurant['image']!,
                        height: 100,
                        width: 140,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        restaurant['name']!,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class FoodHorizontalList extends StatelessWidget {
  const FoodHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> foodItems = [
      {
        'image':
            'https://s3-alpha-sig.figma.com/img/392a/facb/568f5b0afb78e35e0929a3c9a9d95864?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=QdOHh~IJjrXLFdB4bTp4KslDsO4v4mfsdB-2fYNhpW5hbShWUMmAWJnAgfZU04C5HUc2PhC2mA0NMWgjqTzgkT8D3Y-um1jLjxVokFc1qC7LLx5EihnY1ZKDF73rXooIqG5jeoslPbRDB~uTHM1vG673Jeplsmm~dulYI~8da8FRxjgD0UHFcbNwLqfWI4Z9h2B-4ZgMNWQEspsPoj5Hya8OX9q5l85f3rMnVBTBiPKmERj4nun4gcEm65dc8RKLBhXziB5~zLwpN7uDKCyZq~yhNggGkUoizMlKAu-DJbD-vgjpqR15t7~z4k4JJWFdxi9Xto8BfF3EB5HlBEmZnw__',
        'name': 'Garlic Butter Steak',
        'price': '\$11',
        'hasIcon': true,
      },
      {
        'image':
            'https://s3-alpha-sig.figma.com/img/bb62/1f5b/1013d20814c7c56eb337ec6f10abf069?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=CKc9EhGuQElgryW7rDU4TYIQnlAmRxOTpav9TFnGmvDNr--NwkA5paX3A4fMqKMEKEdm6IS2sOfHTdndEaDSmAA4mixTjs8r4Q7A2CwNgmNAFAmwqWtqcpYkJaXArtdozAA5ji4Q~P1mp2ZURaDYqcaprGvELP2-CMj4CcbFwXqjez~LttCY5R74uIQDqfYq6SNytTNfwN6ZQl9VeV8YaPrgE8nYzPp9YGSRCrDl3Ysf-Gvz0kSCpEVouC2oDivM~Lg4pVWuJx65G5oBb~aJDD3HqxnMbu7sCwTEugNr5LyqVcM5I6xAsFnDqJlmmJxhZZkV5xYNLMmP5HYs1PWWTw__',
        'name': 'Mediterranean Chicken',
        'price': '\$11',
        'hasIcon': false,
      },
    ];

    return SizedBox(
      height: 310,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: foodItems.length,
        itemBuilder: (context, index) {
          final item = foodItems[index];
          return Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: SizedBox(
              width: 198,
              height: 267,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: 10,
                    bottom: 10,
                    child: Container(
                      width: 198,
                      height: 231,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              item['name']!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  item['price']!,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(width: 4),
                                if (item['hasIcon'] == true)
                                  const Icon(Icons.local_fire_department,
                                      size: 18, color: Colors.red),
                              ],
                            ),
                            const SizedBox(height: 8),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 28,
                    child: GestureDetector(
                      onTap: () {
                        // عند الضغط على الصورة تفتح صفحة جديدة
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                FoodDetailScreen(foodItem: item),
                          ),
                        );
                      },
                      child: CircleAvatar(
                        radius: 70,
                        backgroundImage: NetworkImage(item['image']!),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
