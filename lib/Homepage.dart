import 'package:app/Cartform.dart';
import 'package:app/FoodCard.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  // List of food items
  final List<Map<String, String>> foodItems = [
    {
      "name": "Zinger Burger",
      "description":
          "A crispy, spicy Zinger Burger with fresh lettuce and mayo!",
      "price": "120",
      "Image":
          "https://www.inspiredtaste.net/wp-content/uploads/2023/08/Cheese-Pizza-2-1200.jpg"
    },
    {
      "name": "Cheese Pizza",
      "description": "Delicious cheese pizza with extra toppings!",
      "price": "250",
      "Image":
          "https://www.inspiredtaste.net/wp-content/uploads/2023/08/Cheese-Pizza-2-1200.jpg"
    },
    {
      "name": "Chicken Wrap",
      "description": "Grilled chicken wrap with fresh veggies and sauces!",
      "price": "180",
      "Image":
          "https://www.momables.com/wp-content/uploads/2024/03/Crispy-chicken-wrap_SQ.jpg"
    },
    {
      "name": "French Fries",
      "description": "Crispy golden fries with a touch of salt!",
      "price": "100",
      "Image":
          "https://www.momables.com/wp-content/uploads/2024/03/Crispy-chicken-wrap_SQ.jpg"
    },
    {
      "name": "Hot Dog",
      "description": "Juicy hot dog with ketchup, mustard, and onions!",
      "price": "150",
      "Image":
          "https://www.momables.com/wp-content/uploads/2024/03/Crispy-chicken-wrap_SQ.jpg"
    },
    {
      "name": "Tandoori Chicken",
      "description": "Spicy and smoky tandoori chicken, served hot!",
      "price": "300",
      "Image ":
          "https://www.inspiredtaste.net/wp-content/uploads/2023/08/Cheese-Pizza-2-1200.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home Page",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Banner Image
            Container(
              height: 200,
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://st5.depositphotos.com/4879635/62455/v/450/depositphotos_624557268-stock-illustration-simple-burger-logo-letter-modified.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Grid of Food Cards
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: GridView.builder(
                itemCount: 10, // Use dynamic length
                shrinkWrap: true, // Prevents infinite height issue
                physics:
                    NeverScrollableScrollPhysics(), // Disables internal scrolling
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, // 2 items per row for better visibility
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.8, // Adjusts item height
                ),
                itemBuilder: (context, index) {
                  return Cards();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
