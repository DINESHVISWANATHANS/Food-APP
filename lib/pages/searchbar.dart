import 'package:flutter/material.dart';
class Search_bar extends StatelessWidget {
  const Search_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 250,
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(

        border: null,
        borderRadius:BorderRadius.circular(15),
              color: Colors.black38,
            

      ),
      child: Padding(
        padding: const EdgeInsets.only(
          right: 15
        ),
        child: TextFormField(
          // obscureText: obscureText,
          // controller: controller,
          // validator: validator,
          decoration:const  InputDecoration(
              hintText: "   search your item..",
              fillColor: Colors.white,
              focusColor: Colors.white,
              border: InputBorder.none
              ),
        ),
      ),
          
    );
  }
}