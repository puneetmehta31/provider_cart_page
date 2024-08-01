import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: Consumer<CartProvider>(
        builder: (context, cartProvider, child) {
          return ListView.builder(
            itemCount: cartProvider.cart.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(cartProvider.cart[index].name),
                subtitle: Text('\$${cartProvider.cart[index].price}'),
                trailing: IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    cartProvider.removeProduct(cartProvider.cart[index]);
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
