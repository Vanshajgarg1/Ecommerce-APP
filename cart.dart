import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Component/cart_item.dart';
import '../models/cart.dart';
import '../models/shoe.dart';
import '../Component/shoe_tile.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'My Cart',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length,  // Updated this line
                itemBuilder: (context, index) {
                  Shoe individualShoe = value.getUserCart()[index];
                  return CartItem(shoe: individualShoe);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
