import 'package:flutter/material.dart';
import 'package:simple_rich_text/simple_rich_text.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String text = 'Click *Food';
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Color(0xFFC8E6C9),
            brightness: Brightness.dark,
            title: Row(
              children: [
                IconButton(icon: Icon(Icons.arrow_back), onPressed: null),
                Padding(
                  padding: const EdgeInsets.only(left: 220),
                  child: IconButton(icon: Icon(Icons.home), onPressed: null),
                ),
              ],
            ),
            pinned: true,
          ),
          SliverAppBar(
            // floating: true,
            pinned: true,
            title: Padding(
              padding: const EdgeInsets.only(right: 100, bottom: 18),
              child: SimpleRichText(
                text: "$text ",
                style: TextStyle(fontSize: 35),
              ),
            ),

            flexibleSpace: Container(),
            bottom: PreferredSize(
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Row(
                          children: [
                            Container(
                              child: IconButton(
                                icon: Icon(Icons.ac_unit),
                                onPressed: null,
                              ),
                            ),
                            // // Container(
                            // //   child: IconButton(
                            // //     icon: Icon(Icons.ac_unit),
                            // //     onPressed: null,
                            // //   ),
                            // ),
                          ],
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.bottomLeft,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(150.0),
                                  color: Colors.black12,
                                ),
                                height: 170,
                                width: 170,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SliverAppBar()
                  ],
                ),
                preferredSize: null),
            backgroundColor: Color(0xFFC8E6C9),
            // pinned: true,
            expandedHeight: 280,
            centerTitle: true,
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  height: 100,
                  child: Center(
                      //child: Text("$Text"),
                      ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
