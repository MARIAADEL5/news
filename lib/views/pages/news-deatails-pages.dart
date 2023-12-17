import 'package:flutter/material.dart';
import 'package:news/models/news_items.dart';

class NewsDeatailsPage extends StatelessWidget {
  final NewsItem newsItem;
  const NewsDeatailsPage({super.key,required this.newsItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Details'),
      ),
    );
  }
}
