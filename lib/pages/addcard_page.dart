import 'package:flutter/material.dart';

class AddCardPage extends StatefulWidget {
  const AddCardPage({super.key});

  @override
  State<AddCardPage> createState() => _AddCardPageState();
}

class _AddCardPageState extends State<AddCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Card"),
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30),
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("assets/images/im_card_bg.png"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("5272 8920 9494 3340", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            ),
            const Text(
              "Enter expiration date",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: "5272 8920 9183 9232"
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: "11/26",
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              ),
              child: const Text("Save Card", style: TextStyle(fontWeight: FontWeight.bold),),
                    onPressed: () {},
            ),
          ],

        ),

      ),
    );
  }
}
