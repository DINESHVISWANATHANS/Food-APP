// ignore_for_file: camel_case_types

import "package:flutter/material.dart";

import "nextpageofproducct.dart";

// ignore: must_be_immutable
class Cart_page extends StatelessWidget {
String nameof;
String price;
String image;
   Cart_page({super.key,required this.nameof,required this.price,required this.image});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Next_pageOf_Product(
          nameof: nameof,
          price: price,
          image: image,
        )));
      },
      child: Container(
        height: 250,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromARGB(95, 216, 211, 211),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 2,
            ),
            SizedBox(
              height: 200,
              width: 206,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    nameof,
                    style: const TextStyle(
                        color: Color.fromARGB(179, 73, 112, 32),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    price,
                    style: const TextStyle(
                        color: Color.fromARGB(179, 73, 112, 32),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                const Icon(
                  Icons.favorite_border,
                  color: Color.fromARGB(255, 58, 56, 56),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
