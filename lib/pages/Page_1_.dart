// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'Productclass.dart';
import 'cart.dart';
import 'searchbar.dart';

class Page_1 extends StatefulWidget {
  const Page_1({super.key});

  @override
  State<Page_1> createState() => _Page_1State();
}

class _Page_1State extends State<Page_1> {
  @override
  Widget build(BuildContext context) {
    final Hight = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: Hight,
        width: Width,
        color: Colors.white,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "images/Logo grewen.png",
                  fit: BoxFit.cover,
                  height: 50,
                  width: 150,
                ),
                Row(
                  children: [
                    GestureDetector(
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                        child: const Icon(Icons.card_giftcard_outlined)),
                    const SizedBox(
                      width: 5,
                    ),
                    const CircleAvatar(
                      backgroundImage: AssetImage("images/14.jpeg"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                )
              ],
            ),
            Container(
              height: 120,
              margin: const EdgeInsets.all(25),
              width: Width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                gradient: LinearGradient(colors: []),
                color: Colors.black,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  "images/10.jpeg",
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Explore",
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Gilgan',
                    color: Color.fromARGB(179, 73, 112, 32),
                  ),
                ),
                Search_bar(),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: Hight,
              width: Width,
              child: GridView.builder(
                  itemCount: PRODUCT.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.78,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    Product product = PRODUCT[index];
                    return Cart_page(
                      nameof: product.Product_name,
                      image: product.Product_image,
                      price: product.Product_price,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
