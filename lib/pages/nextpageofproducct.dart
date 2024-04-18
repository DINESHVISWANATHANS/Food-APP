// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Page_1_.dart';
import 'addProduct.dart';

class Next_pageOf_Product extends StatelessWidget {
  String nameof;
  String price;
  String image;
  Next_pageOf_Product(
      {super.key,
      required this.nameof,
      required this.price,
      required this.image});

  @override
  Widget build(BuildContext context) {
Map<String,dynamic>item={};
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Page_1()));
                },
                child: Image.asset(
                  "images/2.png",
                  height: 50,
                  width: 50,
                ),
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.card_giftcard_outlined),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.search),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("images/14.jpeg"),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              height: 500,
              width: 500,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              nameof,
              style: const TextStyle(
                color: Color.fromARGB(179, 73, 112, 32),
                fontSize: 30,
                fontFamily: 'Gilgan',
              ),
            ),
          ),
          const Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Icon(Icons.star_border),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              "Description :",
              style: TextStyle(
                color: Color.fromARGB(179, 73, 112, 32),
                fontSize: 25,
                fontFamily: 'Gilgan',
              ),
            ),
          ),
          SizedBox(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                "Chicken biryani is a delicious Pakistani/Indian rice dish that's typically reserved for special occasions such as weddings, parties, or holidays such as Ramadan. It has a lengthy preparation, but the work is definitely worth it.",
                style: TextStyle(
                  color: Color.fromARGB(115, 80, 75, 75),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              price,
              style: const TextStyle(
                color: Color.fromARGB(179, 73, 112, 32),
                fontSize: 30,
                fontFamily: 'Gilgan',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      item={
                       " nameof":nameof,
                        "price":price,
                        "image":image,
                      };
                      addproduct.add(item);
                    },
                    child: Container(
                      height: 50,
                      width: 130,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15)),
                        color: Color.fromARGB(179, 73, 112, 32),
                      ),
                      child: const Center(
                        child: Text(
                          "Add To Card",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                      color: Color.fromARGB(255, 192, 190, 178),
                    ),
                    child: const Icon(Icons.add),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 130,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15)),
                      color: Color.fromARGB(179, 73, 112, 32),
                    ),
                    child: const Center(
                      child: Text(
                        "Buy Now",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                      color: Color.fromARGB(255, 192, 190, 178),
                    ),
                    child: const Icon(Icons.badge_sharp),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
