import 'package:flutter/material.dart';

import '../../model/news_model.dart';
import '../pages/news_page.dart';

class HomePageNews extends StatelessWidget {
  const HomePageNews({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: size.height / 0.60,
        width: double.infinity,
        child: ListView.builder(
            itemCount: news.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final articl = news[index];

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Stack(children: [
                      Container(
                        height: size.height / 4.0,
                        width: size.width / 1.1,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(articl.image
                                    // "https://blog.codemagic.io/uploads/covers/codemagic-blog-header-Dart-vs-Javascript.png",
                                    ),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                        bottom: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text("Mike Blue",
                                  style: TextStyle(color: Colors.white)),
                            ),
                            const Icon(Icons.person, color: Colors.white),
                            SizedBox(width: size.width / 2.0),
                            const Text(
                              "119",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.visibility_rounded,
                                size: 18,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                    ListTile(
                      title: Text(
                        articl.title,
                        textDirection: TextDirection.rtl,

                        ///  "جاوا اسکریپت خوش زبان قسمت سی و پنجم",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "${articl.subtitle} ....",
                        textDirection: TextDirection.rtl,
                        maxLines: 4,
                      ),
                    ),
                    FilledButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => NewsPage(
                                    articl: articl,
                                  )));
                        },
                        child: const Text("...بیشتر بخوانید")),
                    const Divider(
                      endIndent: 50,
                      indent: 50,
                      color: Colors.grey,
                    )
                  ],
                ),
              );
            }));
  }
}
