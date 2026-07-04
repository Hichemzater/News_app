// import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:my_news_app/screens/homeScreen.dart';
// import 'package:my_news_app/services/new_services.dart';

void main() {
  runApp(MYNEWSAPP());
}

class MYNEWSAPP extends StatelessWidget {
  const MYNEWSAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppHome(),
    );
  }
}
