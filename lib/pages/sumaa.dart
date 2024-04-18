// import 'package:flutter/material.dart';
// ignore_for_file: file_names, camel_case_types

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Page extends StatefulWidget {
  const Page({super.key});

  @override
  State<Page> createState() => _Page_1State();
}

class _Page_1State extends State<Page> {
  List<dynamic> user=[];
  void functiontodata() async{
  const url='';
  final uri=Uri.parse(url);
  final response=await http.get(uri); 
  final body=response.body;
  final json=jsonDecode(body);
  setState(() {
    user=json['results'];
  });
}
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: functiontodata),
    );
  }
}