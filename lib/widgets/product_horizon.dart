import 'package:desty/provider/products_provider.dart';
import 'package:desty/widgets/desty_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

class ProductHorizon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loadedProducts = Provider.of<Products>(context);
    final products = loadedProducts.items;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(10),
      itemCount: products.length,
      itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
        value: products[index],
        child: DestyItem(),
      ),
    );
  }
}
