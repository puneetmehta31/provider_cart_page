import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sitp_provider/pages/cart_provider.dart';
import 'package:sitp_provider/pages/product_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: MaterialApp(
        title: 'Cart App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ProductListPage(),
      ),
    );
  }
}
