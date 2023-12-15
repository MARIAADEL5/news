import 'package:flutter/material.dart';

class CustomCarsouelSlider extends StatefulWidget {
  const CustomCarsouelSlider({super.key});

  @override
  State<CustomCarsouelSlider> createState() => _CustomCarsouelSliderState();
}

class _CustomCarsouelSliderState extends State<CustomCarsouelSlider> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: imageSliders,
          carouselController: _controller,
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
      ],
    );
  }
}
