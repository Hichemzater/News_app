// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_news_app/models/card.dart';
import 'package:my_news_app/views/category.dart';

class Mycard extends StatelessWidget {
  const Mycard({super.key, required this.cardinfo});
  final ElementsCard cardinfo;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return category_view(catigory_next: cardinfo.myText);
            },
          ),
        );
      },
      child: Container(
        height: 110,
        width: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(cardinfo.myimage),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            cardinfo.myText,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
