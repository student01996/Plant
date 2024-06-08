import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/common.dart';

import 'list.dart';
import 'network_image.dart';

class DetailPage extends StatefulWidget {
  final Plant plant;

  const DetailPage({super.key, required this.plant});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _quantity = 1;

  void _increment() {
    setState(() {
      _quantity++;
    });
  }

  void _decrement() {
    setState(() {
      if (_quantity > 0) {
        _quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.shopping_cart), SizedBox(width: 20)],
      ),
      body: Column(
        children: [
          ImageCached(
            path: widget.plant.image!,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              padding: EdgeInsets.only(left: 12, top: 16),
              decoration: BoxDecoration(
                color: Color(0xFFF3F3F3),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CText(text: 'Best choice')
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CText(
                        text: widget.plant.name ?? "",
                        mbold: true,
                        mSize: 20,
                      ),
                      Container(
                        width: 80,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFF00B761),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              topLeft: Radius.circular(20)),
                        ),
                        child: Center(
                            child: CText(
                          text: widget.plant.price ?? "",
                          color: Colors.white,
                        )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  CText(
                    text: "About",
                    mbold: true,
                  ),
                  CText(
                    text: widget.plant.about ?? "",
                    mSize: 14,
                    color: Colors.grey,
                  ),
                  Spacer(),
                  Row(
                    children: [
                      getButton(Icons.remove,onTap:_decrement),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: CText(text:
                          '$_quantity',
                          mSize: 20,
                          mbold: true,
                        ),
                      ),
                      getButton(Icons.add,onTap:_decrement),
                      SizedBox(width: 16,),
                      Spacer(),
                      Container(
                        width: 120,
                        height: 42,
                        decoration: BoxDecoration(
                            color: Color(0xFF00B761),
                            borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(child: CText(text: 'Buy',color: Colors.white,mSize: 20,)),
                      ),Spacer(),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget getButton(IconData icon,{void Function()? onTap}){
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: Colors.grey,width: .5)
        ),
        child: Center(child: Icon(icon)),
      ),
    );
  }
}
