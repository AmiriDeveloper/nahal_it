import 'package:flutter/material.dart';
import 'package:nahal_it/morteza/VideoPlayerWidget.dart';
// import 'package:nahal_it/VideoPlayerWidget.dart';
// import 'package:fluttertest/VideoPlayerWidget.dart';

class GiridView extends StatelessWidget {
  const GiridView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            child: GridView.count(
              padding: const EdgeInsets.all(6.0),
              crossAxisCount: 1,
              children: List.generate(6, (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(8)),
                    child: const Center(
                      child: VideoPlayerWidget(),
                    ),
                  ),
                );
              }),
            ),
          )),
    );
  }
}
