// this ius the page how is talking aout the methode of scrolliung vertical
import 'package:flutter/material.dart';
import 'package:my_news_app/screens/artical_model.dart';
import 'package:my_news_app/widget/page_of_scroolvertical.dart';

class NewsListView extends StatelessWidget {
  final List<ArticalModel> articalistnews;
  const NewsListView({super.key, required this.articalistnews});
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articalistnews.length, (
        context,
        index,
      ) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: NewsTile(articalModel: articalistnews[index]),
        );
      }),
    );
  }
}
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app_ui_setup/models/article_model.dart';
// import 'package:news_app_ui_setup/services/news_service.dart';

// import 'news_tile.dart';

// class NewsListView extends StatelessWidget {
//   final List<ArticleModel> articles;

//   const NewsListView({super.key, required this.articles});

//   @override
//   Widget build(BuildContext context) {
//     return SliverList(
//       delegate: SliverChildBuilderDelegate(
//         childCount: articles.length,
//         (context, index) {
//           return Padding(
//             padding: const EdgeInsets.only(bottom: 22),
//             child: NewsTile(
//               articleModel: articles[index],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
