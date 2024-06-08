import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/second.dart';

import 'common.dart';
import 'list.dart';
import 'network_image.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CText(
                            text: 'Welcome to',
                            mbold: true,
                            mSize: 22,
                          ),
                          CText(
                            text: 'Plant Shop',
                            mbold: true,
                            color: Color(0xFF00B761),
                            mSize: 26,
                          ),
                        ],
                      ),
                      Icon(Icons.shopping_cart)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'search',
                            prefixIcon: Icon(Icons.search),
                            filled: true,
                            fillColor: Color(0xFFF3F3F3),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 52,
                        width: 52,
                        decoration: BoxDecoration(
                          color: Color(0xFF00B761),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Icon(
                          Icons.filter_list,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                TabBar(
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Color(0xFF00B761),
                  labelColor: Color(0xFF00B761),
                  physics: NeverScrollableScrollPhysics(),

                  // indicator: BoxDecoration(color:Color(0xFF00B761),),
                  tabs: [
                    Tab(text: 'POPULAR'),
                    Tab(text: 'ORGANIC'),
                    Tab(text: 'INDOORS'),
                    Tab(text: 'SYNTHETIC'),
                  ],
                ),
                GridView.builder(
                  itemCount: listPlant.length,
                  shrinkWrap: true,
                  primary: false,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DetailPage(
                                  plant: listPlant[index],
                                )));
                      },
                      child: Container(
                        padding: EdgeInsets.all(16),
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color(0xFFF3F3F3), //#F3F3F3
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                ImageCached(path: listPlant[index].image!),
                                CText(
                                  text: listPlant[index].name ?? "",
                                  mbold: true,
                                  mSize: 14,
                                ),
                                CText(
                                  text: listPlant[index].price ?? "",
                                  mbold: true,
                                )
                              ],
                            ),
                            Positioned(
                                right: 5,
                                child: CircleAvatar(
                                    backgroundColor:
                                        (listPlant[index].isWishList == true)
                                            ? Colors.red.shade50
                                            : Colors.grey.shade300,
                                    child: Icon(
                                      Icons.favorite,
                                      color:
                                          (listPlant[index].isWishList == true)
                                              ? Colors.red
                                              : null,
                                    ))),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  //#00B761

                                  decoration: BoxDecoration(
                                    color:
                                        (listPlant[index].isAvailable == true)
                                            ? Color(0xFF00B761)
                                            : Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  height: 30,
                                  width: 30,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ))
                          ],
                        ),
                      ),
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: .75),
                ),
              ],
            ),
          ), // This trailing comma makes auto-formatting nicer for build methods.
        ),
      ),
    );
  }
}
