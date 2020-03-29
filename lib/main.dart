import 'package:desty/BottomBarScreen.dart';
import 'package:desty/product_screen.dart';
import 'package:desty/provider/products_provider.dart';
import 'package:desty/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: Products())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottomBarScreen(),
        routes: {
          ProductScreen.routeName: (ctx) => ProductScreen(),
          SearchScreen.routeName: (ctx) => SearchScreen(),
        },
      ),
    );
  }
}
