// this is were i get the api and teh respoknse of the api that i used

import 'package:dio/dio.dart';
import 'package:my_news_app/screens/artical_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);
  Future<List<ArticalModel>> getGeneralNews({
    required String category_ofnews,
  }) async {
    // ystra9bel gir fututre sma lazm type furure
    try {
      var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=042d4e60e8b14a9b9d2d13eb7abc35a8&category=$category_ofnews&country=us',
      );

      //the map is the data enter {}
      List<dynamic> articals =
          response.data['articles']; //as m3naha i3tabirha ka
      List<ArticalModel> arcitcalList = [];
      for (var article in articals) {
        ArticalModel articaUsage = ArticalModel(
          image:
              article['urlToImage'] ??
              'https://c8.alamy.com/comp/2DYF5C0/no-image-icon-vector-no-available-picture-symbol-suitable-for-user-interface-element-isolated-on-white-background-2DYF5C0.jpg',
          articalTitel:
              article['title'] ?? 'sorry this artical does not have title ',
          articalSubtitel:
              article['description'] ??
              'sorry this artical does not have a descreption',
        );
        arcitcalList.add(articaUsage);
      }
      return arcitcalList;
    } catch (e) {
      return [];
    }
  }
}
