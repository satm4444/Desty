import 'package:desty/widgets/product_horizon.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey.shade100,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.075),
                    offset: Offset(10, 10),
                    blurRadius: 10,
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-10, -10),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      color: Colors.grey.shade100,
                      child: InkWell(onTap: () {}, child: Icon(Icons.menu)),
                    ),
                  ),
                  Text(
                    "DESTY",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.search),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Trending Attractions",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
              ),
            ),
            Divider(),
            Container(
              height: 220,
              width: double.infinity,
              child: ProductHorizon(),
            ),
            SizedBox(height: 30),
            Container(
              height: 200,
              child: ListView(
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        "NEWS",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    width: double.infinity,
                    height: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade100,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.075),
                          offset: Offset(10, 10),
                          blurRadius: 10,
                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(-10, -10),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        "NEWS",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    width: double.infinity,
                    height: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade100,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.075),
                          offset: Offset(10, 10),
                          blurRadius: 10,
                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(-10, -10),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        "NEWS",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    width: double.infinity,
                    height: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade100,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.075),
                          offset: Offset(10, 10),
                          blurRadius: 10,
                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(-10, -10),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
