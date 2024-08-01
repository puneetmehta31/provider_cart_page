import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sitp_provider/models/product.dart';
import 'cart_provider.dart';
import 'cart_page.dart';

class ProductListPage extends StatelessWidget {
  final List<Product> products = [
    Product(name: 'Product 1', price: 10.0),
    Product(name: 'Product 2', price: 20.0),
    Product(name: 'Product 3', price: 30.0),
  ];

  ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartPage()),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].name),
            subtitle: Text('\$${products[index].price}'),
            trailing: IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                Provider.of<CartProvider>(context, listen: false).addProduct(products[index]);
              },
            ),
          );
        },
      ),
    );
  }
}
