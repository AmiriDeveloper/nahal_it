import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({Key? key}) : super(key: key);

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: SliderModels.items.length,
        itemBuilder: (context, index, realindex) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                    image: (AssetImage(SliderModels.items[index].image)),
                    fit: BoxFit.fill)),
          );
        },
        options: CarouselOptions(
          aspectRatio: 20 / 9,
          viewportFraction: 0.95,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          scrollDirection: Axis.horizontal,
        ));
  }
}

class SliderModels {
  final String image;
  SliderModels(this.image);

  static final List<SliderModels> items = [
    SliderModels('images/1.jpg'),
    SliderModels('images/2.png'),
    SliderModels('images/3.png'),
    SliderModels('images/4.jpg'),
    SliderModels('images/5.png'),
    SliderModels('images/6.png'),
    SliderModels('images/7.jpg'),
    SliderModels('images/8.jpg'),
  ];
}
