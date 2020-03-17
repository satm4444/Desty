import 'package:desty/model/Product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//---This is a widget---//
//here i have designed the layout of what our
// destination product will look like in the main page

class DestyItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final selectedProducts = Provider.of<Product>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: <Widget>[
            Container(
              height: 220,
              width: 160,
              child: Image.network(
                selectedProducts.imageURL,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                left: 10,
                bottom: 10,
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          selectedProducts.title,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                        Text(
                          selectedProducts.subtitle,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 14),
                        )
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
