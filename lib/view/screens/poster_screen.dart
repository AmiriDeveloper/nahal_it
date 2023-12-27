import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PosterWidget extends StatelessWidget {
  const PosterWidget({
    super.key,
    required this.size,
    required this.title,
    required this.urls,
  });

  final Size size;
  final List title;
  final List urls;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.width / 6,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: title.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: size.width / 7,
                width: size.width / 4,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(8)),
                child: TextButton(
                  onPressed: () {
                    launchUrl(Uri.parse(urls[index]));
                  },
                  child: Text(
                    title[index],
                    //entry.value,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),

                // تبدیل map به list
              ),
            );
          }),
    );
  }
}
