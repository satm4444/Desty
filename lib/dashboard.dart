import 'package:carousel_pro/carousel_pro.dart';
import 'package:desty/widgets/product_horizon.dart';
import 'package:flutter/material.dart';

//------Main page of the desty app----//

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: SingleChildScrollView(
          child: Column(
            //----~~~>Main column of this screen<~~~--//
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  //^^^^The App bar made using container--//
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    //^^^^decoration of the appbar---//
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
                    //^^^For the leading, title text and trailing of the appbar-----/
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                            icon: Icon(Icons.menu), onPressed: () {}),
                      ),
                      Text(
                        "DESTY", //title text
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                            icon: Icon(Icons.search),
                            onPressed: () {}), //trailing icon
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                //^^^--For vertical spcaing--//
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  child: Carousel(
                      images: [
                        NetworkImage(
                            "https://boardroom.global/wp-content/uploads/2019/11/153167_c0f7f4e4-e1573642833946.jpg"),
                        NetworkImage(
                            "https://images.unsplash.com/photo-1540959733332-eab4deabeeaf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"),
                        NetworkImage(
                            "https://basecampadventure.com/wp-content/uploads/2018/07/Everest-Three-Pass-Trek.jpg"),
                        NetworkImage(
                            "https://www.goworldtravel.com/wp-content/uploads/2019/03/climbing-mount-fuji-in-off-season-e1553896677572.jpg"),
                        NetworkImage(
                            "https://i.ytimg.com/vi/V3p7vx8mOqg/maxresdefault.jpg"),
                      ],
                      // animationDuration: Duration(seconds: 1),
                      dotSize: 6.0,
                      dotSpacing: 15.0,
                      dotColor: Colors.black,
                      indicatorBgPadding: 4.0,
                      dotBgColor: Colors.grey.withOpacity(0.5),
                      borderRadius: true),
                ),
              ),
              SizedBox(
                //^^^--For vertical spcaing--//
                height: 14,
              ),
              Divider(),
              Text(
                "    Trending Attractions",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Container(
                //^^^--This container contains the products(destinaitons) of the desty app--<<<
                height: 210,
                width: double.infinity,
                child: ProductHorizon(), //<<<--Listview of the products--<<
              ),
              Divider(),
              SizedBox(height: 10),
              Text(
                "    Updates you might like..",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  //^^^This container is for containing further stuffs that can be added to the screen
                  height: 210,
                  child: ListView(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6.0),
                        child: Container(
                          child: FittedBox(
                            child: Material(
                              // color: Colors.grey.shade100,
                              color: Colors.white,
                              elevation: 0.5,
                              borderRadius: BorderRadius.circular(12),
                              shadowColor: Color(0x802196F3),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    height: 100,
                                    width: 100,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                      ),
                                      child: Image(
                                        fit: BoxFit.cover,
                                        alignment: Alignment.topLeft,
                                        image: NetworkImage(
                                            "https://upload.wikimedia.org/wikipedia/commons/9/9c/Meili_Snow_Mountain_at_Dusk.jpg"),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 400,
                                    child: ListTile(
                                      title: Text(
                                        "Nepal's new mountains.",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 26,
                                        ),
                                      ),
                                      subtitle: Text(
                                        "There have been news lately that the mount Everest has been divided into two...",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6.0),
                        child: Container(
                          child: FittedBox(
                            child: Material(
                              // color: Colors.grey.shade100,
                              color: Colors.white,
                              elevation: 0.5,
                              borderRadius: BorderRadius.circular(12),
                              shadowColor: Color(0x802196F3),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    height: 100,
                                    width: 100,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                      ),
                                      child: Image(
                                        fit: BoxFit.cover,
                                        alignment: Alignment.topLeft,
                                        image: NetworkImage(
                                            "https://cdn.vox-cdn.com/thumbor/qU3SX2BS-k6EUaYkt8H0y0ITVfs=/0x0:3802x2593/1200x800/filters:focal(1221x186:1829x794)/cdn.vox-cdn.com/uploads/chorus_image/image/66305831/GettyImages_1197628035.0.jpg"),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 400,
                                    child: ListTile(
                                      title: Text(
                                        "Corona bad for Tourism.",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 26,
                                        ),
                                      ),
                                      subtitle: Text(
                                        "The number of tourists has drastically decreased in just few months...",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6.0),
                        child: Container(
                          child: FittedBox(
                            child: Material(
                              // color: Colors.grey.shade100,
                              color: Colors.white,
                              elevation: 0.5,
                              borderRadius: BorderRadius.circular(12),
                              shadowColor: Color(0x802196F3),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    height: 100,
                                    width: 100,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                      ),
                                      child: Image(
                                        fit: BoxFit.cover,
                                        alignment: Alignment.topLeft,
                                        image: NetworkImage(
                                            "https://cnet4.cbsistatic.com/img/yFIvPIMFevpYAC2UoDWT6YHohlk=/940x0/2020/01/23/bede613c-7860-45ce-90cf-bdef0dd33e3b/header-04.png"),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 400,
                                    child: ListTile(
                                      title: Text(
                                        "\"I love Red\" says Devil.",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 26,
                                        ),
                                      ),
                                      subtitle: Text(
                                        "You get aid only when the devil's get paid !...",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6.0),
                        child: Container(
                          child: FittedBox(
                            child: Material(
                              // color: Colors.grey.shade100,
                              color: Colors.white,
                              elevation: 0.5,
                              borderRadius: BorderRadius.circular(12),
                              shadowColor: Color(0x802196F3),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    height: 100,
                                    width: 100,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                      ),
                                      child: Image(
                                        fit: BoxFit.cover,
                                        alignment: Alignment.topLeft,
                                        image: NetworkImage(
                                            "https://www.pata.org/wp-content/uploads/2018/08/Akihabara-district.jpg"),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 400,
                                    child: ListTile(
                                      title: Text(
                                        "Akihabara really paradise ?",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 26,
                                        ),
                                      ),
                                      subtitle: Text(
                                        "The most renowned place on earth for anime...",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: Text(
                          "More Stories...",
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w300,
                              fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
