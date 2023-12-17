import 'package:flutter/material.dart';
import 'package:news/models/news_items.dart';

class RecommendationIem extends StatelessWidget {
  final NewsItem newsItem;
  const RecommendationIem({super.key, required this.newsItem});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          newsItem.imgUrl,
          height: 100,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          width: 8.0,
        ),
        Column(
          children: [
            Text(
              newsItem.category,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.grey),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Text(newsItem.title),
            const SizedBox(
              height: 12.0,
            ),
            //Text('${newsItem.author}.${newsItem.time}'),
          ],
        ),
      ],
    );
  }
}
