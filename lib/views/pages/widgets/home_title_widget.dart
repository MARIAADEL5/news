import 'package:flutter/material.dart';

class HomeTitlWidget extends StatelessWidget {
  final String title;
  const HomeTitlWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        'Student activites',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      TextButton(
        onPressed: () {},
        child: const Text('View ALl'),
      )
    ]);
  }
}
