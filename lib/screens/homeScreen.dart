// this is the how page where is the app bar and the call of the main widget

// import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
// import 'package:my_news_app/screens/artical_model.dart';
// import 'package:my_news_app/services/new_services.dart';
import 'package:my_news_app/widget/allthe_creen_of_horizanalscrool.dart';
import 'package:my_news_app/widget/news_list.dart';
// import 'package:my_news_app/widget/scroolvertivcal.dart';

class MyAppHome extends StatelessWidget {
  const MyAppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('News', style: TextStyle(fontSize: 40)),
            Text('Cloud', style: TextStyle(color: Colors.orange)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: Categoriesitem()),
            SliverToBoxAdapter(child: SizedBox(height: 35)),

            NewListBuilder(catocat: 'general',),
          ],
        ),
      ),
    );
  }
}

// class NewListBuilder extends StatefulWidget {
//   const NewListBuilder({super.key});

//   @override
//   State<NewListBuilder> createState() => _NewListBuilderState();
// }

// class _NewListBuilderState extends State<NewListBuilder> {
//   List<ArticalModel> articalistnews = [];
//   bool isLOading = true;
//   @override
//   void initState() {
//     super.initState();
//     getGeneral();
//   }

//   Future<void> getGeneral() async {
//     articalistnews = await NewsServices(Dio()).getGeneralNews();
//     isLOading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLOading
//         ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
//         : NewsListView(articalistnews: articalistnews);
//   }
// }
