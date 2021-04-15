import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/ProductModel.dart';
import 'package:flutter/widgets.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _items = [
    Product(
        id: 'c1',
        title: 'BAR-B-QUE',
        color: Colors.yellow[200],
        imageUrl:
            "https://cdn.pixabay.com/photo/2016/08/04/11/56/smoke-1568953_960_720.jpg"),
    Product(
        id: 'c2',
        title: 'Beef Recipes',
        color: Colors.blue[100],
        imageUrl:
            "https://cdn.pixabay.com/photo/2018/10/25/09/08/menemen-3771970__340.jpg"),
    Product(
        id: 'c3',
        title: 'Chicken Recipes',
        color: Colors.pink[200],
        imageUrl:
            "https://static.toiimg.com/thumb/62711166.cms?resizemode=4&width=1200"),
    Product(
        id: 'c4',
        title: 'Pasta',
        color: Colors.blue[200],
        imageUrl: "https://static.toiimg.com/photo/71725165.cms"),
    Product(
        id: 'c5',
        title: 'Pizza',
        color: Colors.purple[100],
        imageUrl:
            "https://cdn.pixabay.com/photo/2018/04/11/03/13/food-3309418__340.jpg"),
    Product(
        id: 'c6',
        title: 'Rice and Beans',
        color: Colors.green[100],
        imageUrl:
            "https://cdn.pixabay.com/photo/2016/04/17/03/53/food-1334158__340.jpg"),
    Product(
        id: 'c7',
        title: 'Salads',
        color: Colors.lightBlue[100],
        imageUrl:
            "https://cdn.pixabay.com/photo/2016/09/15/19/24/salad-1672505__340.jpg"),
    Product(
        id: 'c8',
        title: 'Soups',
        color: Colors.lightGreen[100],
        imageUrl:
            "https://cdn.pixabay.com/photo/2021/02/27/10/05/goulash-6054124__340.jpg"),
    Product(
        id: 'c9',
        title: 'Desert Recipes',
        color: Colors.pink[100],
        imageUrl:
            "https://www.cuocicuoci.com/wp-content/uploads/2020/08/zuppa-fredda.jpg"),
    Product(
        id: 'c10',
        title: 'Fish Rewipes',
        color: Colors.teal[100],
        imageUrl:
            "https://cdn.pixabay.com/photo/2015/02/11/10/16/sunny-side-up-632217__340.jpg"),
    Product(
        id: 'c11',
        title: 'Italian',
        color: Colors.yellow[200],
        imageUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTr1idRghq-NsNSzRZrIQ0MGG7KY-ChCtoqgQ&usqp=CAU"),
    Product(
        id: 'c12',
        title: 'Mutton Recipes',
        color: Colors.blue[100],
        imageUrl:
            "https://image.shutterstock.com/image-photo/haleem-spices-herbs-600w-1488278681.jpg"),
    Product(
        id: 'c13',
        title: 'Vegetables Recipes',
        color: Colors.pink[200],
        imageUrl:
            "https://cookwithreena.files.wordpress.com/2019/11/img_20191122_134557_bokehedtwtr.jpg?w=1024"),
    Product(
        id: 'c14',
        title: 'Break Fast ',
        color: Colors.blue[200],
        imageUrl:
            "https://simplyvegetarian777.com/wp-content/uploads/2016/04/image-16-1024x768.png"),
    Product(
        id: 'c15',
        title: 'Chaat',
        color: Colors.purple[100],
        imageUrl:
            "https://mydaintykitchen.com/wp-content/uploads/2019/04/20190415_142131-1024x768.jpg"),
    Product(
        id: 'c16',
        title: 'Soup',
        color: Colors.green[100],
        imageUrl:
            "https://data.whicdn.com/images/349131763/original.jpg?t=1601400485"),
    Product(
        id: 'c17',
        title: 'Breakfast',
        color: Colors.lightBlue[100],
        imageUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKFvrNZxrpgAhlnwIcv6UpHjX3hbONSnH6EQ&usqp=CAU"),
    Product(
        id: 'c18',
        title: 'Asian',
        color: Colors.lightGreen[100],
        imageUrl:
            "https://media.cntraveller.in/wp-content/uploads/2020/06/Arbi-leaves-1366x768.jpg"),
    Product(
        id: 'c19',
        title: 'French',
        color: Colors.pink[100],
        imageUrl:
            "https://www.cuocicuoci.com/wp-content/uploads/2020/08/zuppa-fredda.jpg"),
    Product(
        id: 'c20',
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
}
