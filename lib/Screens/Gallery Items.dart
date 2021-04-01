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
                      "https://upload.wikimedia.org/wikipedia/commons/3/32/Googleplex_HQ_%28cropped%29.jpg",
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
                      "https://upload.wikimedia.org/wikipedia/commons/3/32/Googleplex_HQ_%28cropped%29.jpg",
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
