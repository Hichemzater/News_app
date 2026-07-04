import 'package:flutter/material.dart';
import 'package:my_news_app/models/card.dart';
import 'package:my_news_app/widget/model_of_item_of_horizanal_scrool.dart';

class Categoriesitem extends StatelessWidget {
  const Categoriesitem({super.key});
  final List<ElementsCard> mylist = const [
    ElementsCard(myimage: 'assets/business.avif', myText: 'Business'),
    ElementsCard(myimage: 'assets/entertaiment.avif', myText: 'Entertaiment'),
    ElementsCard(myimage: 'assets/general.avif', myText: 'General'),
    ElementsCard(myimage: 'assets/health.avif', myText: 'Health'),
    ElementsCard(myimage: 'assets/science.avif', myText: 'Science'),
    ElementsCard(myimage: 'assets/sports.avif', myText: 'Sports'),
    ElementsCard(myimage: 'assets/technology.jpeg', myText: 'Technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: mylist.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Mycard(cardinfo: mylist[index]),
          );
        },
      ),
    );
  }
}
