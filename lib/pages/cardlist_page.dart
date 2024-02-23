import 'package:flutter/material.dart';

class CardListPage extends StatefulWidget {
  const CardListPage({super.key});

  @override
  State<CardListPage> createState() => _CardListPageState();
}

class _CardListPageState extends State<CardListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card List",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
      ),
      body: ListView(
        children: [
          _itemList(title: "**** **** **** 9275 \n11/25",image: "assets/images/ic_card_master.png"),
          _itemList(title: "**** **** **** 9275 \n12/25",image: "assets/images/ic_card_visa.png"),
        ],
      ),
      );
  }
}

Widget _itemList({title, image,}){
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.only(left: 30, top: 10, right: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  child: Image.asset(
                  image,
                  width: 80,
                  )
                   ),
                const SizedBox(width: 10,),
                Text(title),
              ],
            ),
            const Icon(
              Icons.arrow_drop_down_circle_sharp,
              color: Colors.grey,
              size: 30.0,
            )
          ],
        ),
      ),
    ],
  );

}

