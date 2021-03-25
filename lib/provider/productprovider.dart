import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/ProductModel.dart';
import 'package:flutter/widgets.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _items = [
    Product(
        id: 'c1',
        title: 'Italian',
        color: Colors.yellow[200],
        imageUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTr1idRghq-NsNSzRZrIQ0MGG7KY-ChCtoqgQ&usqp=CAU"),
    Product(
        id: 'c2',
        title: 'Quick & Easy',
        color: Colors.blue[100],
        imageUrl:
            "https://image.shutterstock.com/image-photo/haleem-spices-herbs-600w-1488278681.jpg"),
    Product(
        id: 'c3',
        title: 'Hamburgers',
        color: Colors.pink[200],
        imageUrl:
            "https://cookwithreena.files.wordpress.com/2019/11/img_20191122_134557_bokehedtwtr.jpg?w=1024"),
    Product(
        id: 'c4',
        title: 'German',
        color: Colors.blue[200],
        imageUrl:
            "https://simplyvegetarian777.com/wp-content/uploads/2016/04/image-16-1024x768.png"),
    Product(
        id: 'c5',
        title: 'Light & Lovely',
        color: Colors.purple[100],
        imageUrl:
            "https://mydaintykitchen.com/wp-content/uploads/2019/04/20190415_142131-1024x768.jpg"),
    Product(
        id: 'c6',
        title: 'Exotic',
        color: Colors.green[100],
        imageUrl:
            "https://data.whicdn.com/images/349131763/original.jpg?t=1601400485"),
    Product(
        id: 'c7',
        title: 'Breakfast',
        color: Colors.lightBlue[100],
        imageUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKFvrNZxrpgAhlnwIcv6UpHjX3hbONSnH6EQ&usqp=CAU"),
    Product(
        id: 'c8',
        title: 'Asian',
        color: Colors.lightGreen[100],
        imageUrl:
            "https://media.cntraveller.in/wp-content/uploads/2020/06/Arbi-leaves-1366x768.jpg"),
    Product(
        id: 'c9',
        title: 'French',
        color: Colors.pink[100],
        imageUrl:
            "https://www.cuocicuoci.com/wp-content/uploads/2020/08/zuppa-fredda.jpg"),
    Product(
        id: 'c10',
        title: 'Summer',
        color: Colors.teal[100],
        imageUrl:
            "https://artandkitchen.files.wordpress.com/2016/01/pane-bruco-e28093-caterpillar-bread-1.jpg"),
  ];

  List<Product> get item {
    return [..._items];
  }

  void addValue() {
    // item.add(value);
    notifyListeners();
  }

  Product findViewById(String id) {
    return item.firstWhere((product) => product.id == id);
  }
}
