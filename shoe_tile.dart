import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  final void Function()? onTap;

  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Image with rounded corners
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(shoe.imagePath),
          ),

          // Description Text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              shoe.description,
              style: TextStyle(color: Colors.grey[600]),
              textAlign: TextAlign.center, // Center align the text
            ),
          ),

          // Name, Price, and Add Button
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Shoe Name and Price
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        shoe.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        overflow: TextOverflow.ellipsis, // Prevent overflow
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Rs ${shoe.price}', // String interpolation
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),

                // Add Button
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
