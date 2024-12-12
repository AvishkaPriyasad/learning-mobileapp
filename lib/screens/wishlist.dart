import 'package:flutter/material.dart';


class WishlistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF674AEF),
        title: Text(
          "Wishlist",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
            wordSpacing: 2,
            color: Colors.white,
            ),
        ), 
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          WishlistItem(
            title: "Flutter Development Course",
            image: "images/Flutter.png",
            price: "\$49.99",
          ),
          WishlistItem(
            title: "React JS for Beginners",
            image: "images/React Native.png",
            price: "\$39.99",
          ),
          WishlistItem(
            title: "Python Programming",
            image: "images/Python.png",
            price: "\$29.99",
          ),
          // Add more items as needed
        ],
      ),
    );
  }
}

class WishlistItem extends StatelessWidget {
  final String title;
  final String image;
  final String price;

  const WishlistItem({
    required this.title,
    required this.image,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Image.asset(
              image,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.delete, color: Colors.red),
              onPressed: () {
                // Logic to remove from wishlist
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("$title removed from Wishlist."),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
