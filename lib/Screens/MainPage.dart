import 'package:flutter/material.dart';

import 'Gallery Items.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var isSearching = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: !isSearching
            ? Text(
                "What to eat?",
                style: TextStyle(color: Color(0xfff54d27)),
                textAlign: TextAlign.center,
              )
            : TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search, color: Color(0xfff54d27)),
                  hintText: "You can search here",
                  hintStyle: TextStyle(
                    color: Color(0xfff54d27),
                  ),
                ),
              ),
        backgroundColor: Colors.white,
        actions: [
          isSearching
              ? IconButton(
                  icon: Icon(
                    Icons.cancel,
                    color: Color(0xfff54d27),
                  ),
                  color: Colors.black,
                  onPressed: () {
                    setState(() {
                      this.isSearching = false;
                    });
                  },
                )
              : IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Color(0xfff54d27),
                  ),
                  color: Colors.black,
                  onPressed: () {
                    setState(() {
                      this.isSearching = true;
                    });
                  },
                )
        ],
      ),
      body: NotificationListener(
        child: GalleryItems(),
      ),
    );
  }
}
