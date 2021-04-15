import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/productprovider.dart';
import 'package:flutter_application_1/widget/productitems.dart';
import 'package:provider/provider.dart';
import 'package:carousel_slider/carousel_slider.dart';

class GalleryItems extends StatefulWidget {
  @override
  _ProductdetailsState createState() => _ProductdetailsState();
}

class _ProductdetailsState extends State<GalleryItems> {
  final products = 3;

  final List a = ["ali", "sf"];
  var isSearching = false;
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<ProductProvider>(context).item;
    return Column(
      children: [
        Expanded(
          child: CarouselSlider(
            // height: 200.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.8,
            items: [
              Container(
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1494548162494-384bba4ab999?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8c3VucmlzZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2014/02/27/16/10/tree-276014__340.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 2 / 2,
                  crossAxisCount: 2,
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 1),
              itemBuilder: (BuildContext context, index) {
                return ChangeNotifierProvider.value(
                    value: products[index], child: ProductGalleryitems());
              }),
        ),
      ],
    );
  }
}
