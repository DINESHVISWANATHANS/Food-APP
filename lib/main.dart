import "package:flutter/material.dart";
import "package:provider/provider.dart";
// import "package:food_app_24_02/pages/Login_page.dart";
import "pages/First_pages.dart";
import 'package:flutter/services.dart';

import "pages/addProduct.dart";

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(0, 247, 243, 243)));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => addproduct())],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: First_pages(),
        color: Color.fromARGB(179, 73, 112, 32),
      ),
    );
  }
}
