//data of our destination

import 'package:desty/model/Product.dart';
import 'package:flutter/material.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: "first",
      title: "Tokyo",
      subtitle: "Japan",
      description: "Beautifull place",
      imageURL:
          "https://booksandbao.com/wp-content/uploads/2019/02/jezael-melgoza-974061-unsplash-e1567602273865.jpg",
      // imageURL: "https://cdn.getyourguide.com/img/tour_img-2246117-148.jpg",
      isFavourite: false,
    ),
    Product(
      id: "second",
      title: "Pokhara",
      subtitle: "Nepal",
      description: "Beautifull place",
      imageURL:
          "https://www.iucn.org/sites/dev/files/styles/850x500_no_menu_article/public/import/img/phewa_lake_ayush_rana.jpg?itok=gB-0lmkh",
      //"https://cdn.getyourguide.com/img/tour_img-2246117-148.jpg",
      isFavourite: false,
    ),
    Product(
      id: "third",
      title: "Italy",
      subtitle: "France",
      description: "Beautifull place",
      imageURL:
          "https://clip.cookdiary.net/sites/default/files/wallpaper/drawn-eiffel-tower/377148/drawn-eiffel-tower-italy-377148-4001059.jpg",
      // "https://dynaimage.cdn.cnn.com/cnn/q_auto,w_412,c_fill,g_auto,h_232,ar_16:9/http%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F170606121206-italy---travel-destination---shutterstock-517522957.jpg",
      // imageURL: "https://cdn.getyourguide.com/img/tour_img-2246117-148.jpg",
      isFavourite: false,
    ),
    Product(
      id: "fourth",
      title: "China",
      subtitle: "Nanjing",
      description: "Beautifull place",
      imageURL:
          "https://previews.123rf.com/images/zeksk/zeksk1806/zeksk180600017/103544704-traditional-thai-decorated-buddhist-temple-on-a-mountain-with-jungle-in-the-background-chinese-templ.jpg",
      //"https://cdn.getyourguide.com/img/tour_img-2246117-148.jpg",
      isFavourite: false,
    )
  ];
  List<Product> get items {
    return [..._items]; //--Getter for the listed items--//
  }

  Product findById(String id) {
    return _items.firstWhere((product) => product.id == id);
  }
}
