import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/models/news_items.dart';
import 'package:news/views/pages/news-deatails-pages.dart';
import 'package:news/views/pages/widgets/app-baricon.dart';
import 'package:news/views/pages/widgets/custom-curserslider.dart';
import 'package:news/views/pages/widgets/home_title_widget.dart';
import 'package:news/views/pages/widgets/recommandation_item.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final List<String> imglist = [
    // 'https://th.bing.com/th/id/OIP.vX5uwUoaIedeA1sF9ze_qAHaEK?w=307&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    // 'https://th.bing.com/th/id/OIP.9WlGpsiRxXIng4HaDNFC6QHaEh?w=282&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    // 'https://th.bing.com/th/id/OIP.YARaVAGLh-r7l09H9QDfVQAAAA?w=279&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    // 'https://th.bing.com/th/id/OIP.lcUZeQ3mcNKqwBu2vX-uQQHaE7?w=277&h=185&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    //];
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppBarIcon(icon: Icons.menu),
                  Row(
                    children: [
                      AppBarIcon(icon: Icons.search),
                      SizedBox(
                        width: 6.0,
                      ),
                      AppBarIcon(icon: Icons.notifications),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              const HomeTitlWidget(title: 'Student activites'),
              const SizedBox(
                height: 16.0,
              ),
              const CustomCarsouelSlider(),
              const SizedBox(height: 16.0),
              const HomeTitlWidget(title: 'Types of Student Activites'),
              const SizedBox(
                height: 8.0,
              ),
              ...(news
                  .map((newsItem) => Padding(padding: const EdgeInsets.only(bottom: 15.0),
                    child:InkWell(onTap:()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NewsDeatailsPage(newsItem:newsItem,))),
                      child: RecommendationIem(newsItem: newsItem)
                      )
                      ,)
                      ,)

                  .toList()),
              // ...news
              //     //RecommendationIem(newsItem: newsItem)
              //     .map(NewsItem)=>RecommendationIem(newsItem: newsItem),

              //     ),

              //
              //   .toList(),
              //CustomCarsouelSlider(imglist: imglist),
            ]),
          ),
        ),
      ),
    );
  }
}
