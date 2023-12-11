import 'package:flutter/material.dart';
import 'package:nahal_it/amiri/news_api.dart';
import 'package:nahal_it/cart_provider.dart';
import 'package:nahal_it/malika/word_press.dart';
import 'package:nahal_it/amiri/news_page.dart';
import 'package:nahal_it/amiri/widgets.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'amiri/api.dart';
import 'amiri/cart_screen.dart';
import 'package:badges/badges.dart' as badges;

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // DBHelper dbHelper = DBHelper();
/*
  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw "این سایت وجود ندارد";
    }
  }
*/
  final _controller = PageController();

  final _controler = PageController();

  List urls = [
    "https://nahalit.com/%d8%aa%d8%af%d9%88%db%8c%d9%86-%d9%be%d8%b1%d9%88%d9%be%d9%88%d8%b2%d8%a7%d9%84/",
    "https://nahalit.com/%da%af%d8%b1%d8%a7%d9%81%db%8c%da%a9/",
    "https://nahalit.com/%da%af%d8%b1%d8%a7%d9%81%db%8c%da%a9/",
    "https://nahalit.com/%d8%ae%d8%af%d9%85%d8%a7%d8%aa-%d8%aa%d8%af%d9%88%db%8c%d9%86-%d8%b5%d8%af%d8%a7-%d9%88-%d8%b5%d8%af%d8%a7-%da%af%d8%b0%d8%a7%d8%b1%db%8c/",
    "https://nahalit.com/%D8%AE%D8%AF%D9%85%D8%A7%D8%AA-%D9%BE%D8%B1%DB%8C%D9%85%DB%8C%D8%B1-%D8%AA%D8%AF%D9%88%DB%8C%D9%86-%D9%81%DB%8C%D9%84%D9%85/",
    "https//nahalit.com/%d9%81%d8%b1%d9%88%d8%b4-%d8%b3%d8%a7%db%8c%d8%aa-%d8%a7%d8%ae%d8%aa%d8%b5%d8%a7%d8%b5%db%8c-%d9%88-%d8%a7%d9%82%d8%aa%d8%b5%d8%a7%d8%af%db%8c/",
  ];

  List title = [
    "ui/ux",
    "پروشور",
    "پوستر",
    "کاتالوگ",
    "لوگو",
    "کارت ویزیت",
  ];

  @override
  Widget build(BuildContext context) {
    //  final cart = Provider.of<CartProvider>(context);
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        //  appBar: newMethod(size),

        appBar: AppBar(
          //backgroundColor: Colors.green,
          toolbarHeight: 80,
          title: const SizedBox(
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                  label: Icon(Icons.search_rounded),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)))),
            ),
          ),
          leadingWidth: size.width / 4,
          leading: Row(
            children: [
              //const SizedBox(width: 5),
              Builder(builder: (context) {
                return IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(Icons.menu));
              }),

              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CartScreen()));
                  },
                  icon: badges.Badge(
                      position: badges.BadgePosition.topEnd(top: -10, end: -12),
                      showBadge: true,
                      ignorePointer: false,
                      // onTap: () {},
                      badgeContent:
                          Consumer<Cart>(builder: (context, cart, child) {
                        return Text("${cart.count}",
                            style: const TextStyle(
                                color: Colors.white, fontSize: 10));
                      }),
                      badgeStyle: badges.BadgeStyle(
                        shape: badges.BadgeShape.circle,
                        badgeColor: Colors.amber,
                        padding: const EdgeInsets.all(5),
                        borderRadius: BorderRadius.circular(4),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 2),
                        elevation: 0,
                      ),
                      child: const Icon(Icons.shopping_cart_rounded))),
            ],
          ),
        ),

        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const CustomSlider(),
              const SizedBox(height: 15),
              SizedBox(
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
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),

                          // تبدیل map به list
                        ),
                      );
                    }),
              ),
              const SizedBox(height: 10),
              // this one GrideViewWidget it a Widget
              // i creat
              // GrideViewWidget(size: size),
              FirstListViewBuilder(size: size),
              SecondListViewBuilder(size: size),
              // A Container to showing Product for Sell
              // this widget have add to buy List Botton
              ContainerWithIndicator(size: size, controller: _controller),
              // this a dots when you scroll to right
              // or left they goes to the next dot
              SmoothPageInd(controler: _controller),
              const SizedBox(height: 30),
              GrideViewWidget(size: size),
              const SizedBox(height: 20),
              // Container with indacator
              WorldPress(size: size),
              const SizedBox(height: 15),
              APageViewBuilder(size: size, controler: _controler),
              SmoothPageInd(controler: _controler),
              const SizedBox(height: 30),
              const Text(
                "اخرین مطالب نهال آی تی",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              //  SizedBox(height: 5),
              HomePageNews(size: size),
              const Text("اپلیکیشن نهال ای تی فروش انواع قالب و اموزش"),
              const SizedBox(height: 20),
              DescriptionContainer(size: size),
              const SizedBox(height: 20),
              Center(
                  child: Text(
                "nahalit.com",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey[300]),
              )),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
////////////////////////////////////////////////////////////////////////////////

class WorldPress extends StatelessWidget {
  const WorldPress({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.width / 2.8,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: product.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WordPressPliginScreen()));
                },
                child: SizedBox(
                    width: size.width / 3.0,
                    child: Column(
                      children: [
                        Image.asset(
                          product[index].image,
                          scale: 6,
                        ),
                        const SizedBox(height: 8),
                        Text(product[index].title)
                      ],
                    )),
              ),
            );
          }),
    );
  }
}

class GrideViewWidget extends StatelessWidget {
  const GrideViewWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width / 1.1,
      height: size.height / 5.0,
      child: GridView.builder(
          itemCount: 4,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            mainAxisExtent: 80,
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return Container(
              height: 70,
              width: 90,
              color: Colors.grey[100],
              child: Row(
                children: [
                  Image.asset(list2[index].images),
                  const SizedBox(width: 10),
                  Text(list2[index].title)
                ],
              ),
            );
          }),
    );
  }
}

class SmoothPageInd extends StatelessWidget {
  const SmoothPageInd({
    super.key,
    required PageController controler,
  }) : _controler = controler;

  final PageController _controler;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: _controler,
      count: 6,
      effect: const ExpandingDotsEffect(
          dotColor: Colors.greenAccent,
          dotHeight: 10,
          dotWidth: 10,
          activeDotColor: Colors.tealAccent),
    );
  }
}

class DescriptionContainer extends StatelessWidget {
  const DescriptionContainer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / 4.0,
      width: size.width / 1.1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.pink[100]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              children: [
                Image.asset(
                  "images/plant.png",
                  scale: 8,
                ),
                const Text("نهال ای تی"),
                const SizedBox(height: 15),
                Image.asset(
                  "images/earth.png",
                  scale: 8,
                ),
                const Text("سایت نهال  "),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                SizedBox(
                  width: size.width / 2.0,
                  child: const Text(
                    "آدرس : تهران میدان فردوسی خیابان ایرانشهر بین سمیه و طالقانی مجتمع تجاری میلاد واحد 9",
                    textDirection: TextDirection.rtl,
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: size.width / 2.0,
                  child: const Text(
                    "پشتیبانی 24 ساعته : 02188867940 – 09927674217",
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

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

class APageViewBuilder extends StatelessWidget {
  const APageViewBuilder({
    super.key,
    required this.size,
    required PageController controler,
  }) : _controler = controler;

  final Size size;
  final PageController _controler;

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return SizedBox(
      height: size.height / 1.5,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 200,
          child: PageView.builder(
              itemCount: 6,
              controller: _controler,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //  crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset("images/photo.jpg"),
                        Container(
                            height: 30,
                            width: 100,
                            color: Colors.green[500],
                            child: const Center(child: Text("HTML قالب"))),
                        const Text("قالب در دست ساخت ابروان"),
                        const Text("unName"),
                        const Text("119.0"),
                        ElevatedButton(
                            onPressed: () {
                              cart.add(items[index]);
                            },
                            child: const Text("افزودن به سبد"))
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}

class FirstListViewBuilder extends StatelessWidget {
  const FirstListViewBuilder({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.width / 2.0,
      width: double.infinity,
      child: ListView.builder(
          itemCount: thingsList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      //  _launchUrl(thingsList[index].url);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(thingsList[index].images))),
                      height: size.width / 3.0,
                      width: size.width / 3.0,

                      //  child: Image.asset(thingsList[index]),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(thingsList[index].title),
                ],
              ),
            );
          }),
    );
  }
}

class SecondListViewBuilder extends StatelessWidget {
  const SecondListViewBuilder({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.width / 2.0,
      width: double.infinity,
      child: ListView.builder(
          itemCount: thingsList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      //  _launchUrl(thingsList[index].url);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(otherList[index].images))),
                      height: size.width / 3.0,
                      width: size.width / 3.0,

                      //  child: Image.asset(thingsList[index]),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(otherList[index].title),
                ],
              ),
            );
          }),
    );
  }
}
