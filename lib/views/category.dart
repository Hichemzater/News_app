import 'package:flutter/material.dart';
import 'package:my_news_app/widget/news_list.dart';

class category_view extends StatelessWidget {
  const category_view({super.key, required this.catigory_next});

  final String catigory_next;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 50)),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: NewListBuilder(catocat: catigory_next),
          ),
        ],
      ),
    );
  }
}
