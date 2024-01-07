import 'package:flutter/material.dart';
import 'package:nahal_it/controller/cart_provider.dart';
import 'package:nahal_it/view/screens/app_list_screen.dart';
import 'package:nahal_it/view/screens/customslider_screen.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'model/api.dart';
import 'view/screens/cart_screen.dart';
import 'package:badges/badges.dart' as badges;
import 'view/screens/description_screen.dart';
import 'view/screens/html_list_screen.dart';
import 'view/screens/news_list_screen.dart';
import 'view/screens/poster_screen.dart';
import 'view/screens/product_list_screen.dart';
import 'view/screens/services_screen.dart';
import 'widgets/NavigationDrawer.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          actions: [
            Container(
              width: 60,
              padding: const EdgeInsets.only(right: 16.0),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => (const CartScreen())));
                },
                icon: badges.Badge(
                  position: badges.BadgePosition.topEnd(top: -10, end: -12),
                  showBadge: true,
                  ignorePointer: false,
                  // onTap: () {},
                  badgeContent: Consumer<Cart>(builder: (context, cart, child) {
                    return Text("${cart.count}",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 10));
                  }),
                  badgeStyle: badges.BadgeStyle(
                    shape: badges.BadgeShape.circle,
                    badgeColor: Colors.amber,
                    padding: const EdgeInsets.all(5),
                    borderRadius: BorderRadius.circular(4),
                    borderSide: const BorderSide(color: Colors.black, width: 2),
                    elevation: 0,
                  ),
                  child: const Icon(Icons.shopping_cart_rounded),
                ),
              ),
            ),
          ],
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
          leadingWidth: size.width / 8,
          // leading: NavigationDrawer(),
          backgroundColor: Colors.white,
        ),
        drawer: Navigation_Drawer(),
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const CustomSlider(),
              const SizedBox(height: 15),
              PosterWidget(size: size, title: title, urls: urls),
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
              // DescriptionContainer(size: size),
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
