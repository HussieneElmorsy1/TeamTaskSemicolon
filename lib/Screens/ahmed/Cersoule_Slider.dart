import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Cersoul_slider extends StatelessWidget {
  Cersoul_slider({super.key});

  final List<String> imageUrls = [
    'https://picsum.photos/200/300?image=1',
    'https://picsum.photos/200/300?image=2',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CarouselSlider(
            items: imageUrls
                .map((e) => Image.network(
                      e,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ))
                .toList(),
            options: CarouselOptions(
              // height: 100,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 2),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              onPageChanged: (index, reason) => {},
              scrollDirection: Axis.horizontal,
            )),
      ),
    );
  }
}
