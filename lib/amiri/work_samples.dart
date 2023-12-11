import "package:flutter/material.dart";
import "package:nahal_it/amiri/cart_screen.dart";
import "package:nahal_it/cart_provider.dart";
import "package:provider/provider.dart";
import 'package:badges/badges.dart' as badges;

class WorkSamples extends StatelessWidget {
  const WorkSamples({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(
          child: GridView.builder(
              itemCount: 20,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 300.0,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.black26),
                );
              }),
        ),
      ),
    );
  }
}
