import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:my_news_app/screens/artical_model.dart';
import 'package:my_news_app/services/new_services.dart';
import 'package:my_news_app/widget/scroolvertivcal.dart';

class NewListBuilder extends StatefulWidget {
  const NewListBuilder({super.key, required this.catocat});
  final String catocat;
  @override
  State<NewListBuilder> createState() => _NewListBuilderState();
}

class _NewListBuilderState extends State<NewListBuilder> {
  var future ;
  @override
  void initState() {
    super.initState();
   future = NewsServices(Dio()).getGeneralNews(category_ofnews: widget.catocat);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalModel>>(
      future: future, // hna n7atou request li n5dmou bih
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articalistnews: snapshot.data!);
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(child: Text('There is an error'));
        } else {
          return SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
