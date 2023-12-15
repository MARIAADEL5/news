import 'package:flutter/material.dart';
import 'package:news/views/pages/widgets/app-baricon.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
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
            )
          ]),
        ),
      ),
    ));
  }
}
