import 'package:flutter/material.dart';
import 'package:project/models/marketplace_model.dart';

class MarketPlacePage extends StatefulWidget {
  MarketPlacePage({Key? key}) : super(key: key);

  @override
  _MarketPlacePageState createState() => _MarketPlacePageState();
}

class _MarketPlacePageState extends State<MarketPlacePage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Text(
            "Market Place",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Container(
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.grey[300]),
            child: IconButton(
              icon: Icon(Icons.search_outlined),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {
                print('Search Clicked');
              },
            ),
          )
        ]),
      ),
      const Divider(
        thickness: 1,
        color: Colors.black38,
      ),
      Expanded(
          child: GridView.count(
        primary: false,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        children: [
          for (var i = 0; i < marketplaceData.length; i++) ...[
            InkWell(
              child: Card(
                child: Column(
                  children: [
                    Expanded(
                      child: Image(
                        image: AssetImage(marketplaceData[i].photo),
                      ),
                    ),
                    Text(
                      marketplaceData[i].title,
                      style: const TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      marketplaceData[i].price.toString(),
                      style: const TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            )
          ]
        ],
      ))
    ]);
  }
}
