import 'package:flutter/material.dart';

class Navigation_Drawer extends StatelessWidget {
  const Navigation_Drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [buildHeader(context), buildMenuItems(context)],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
    );
  }

  Widget buildMenuItems(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(
            Icons.home_outlined,
            size: 35,
          ),
          title: const Text("Home"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(
            Icons.shopping_cart_outlined,
            size: 35,
          ),
          title: const Text("Products"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(
            Icons.add_card_outlined,
            size: 35,
          ),
          title: const Text("Add Order"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(
            Icons.menu_book_outlined,
            size: 35,
          ),
          title: const Text("Blog"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(
            Icons.qr_code_2_outlined,
            size: 35,
          ),
          title: const Text("Work Samples"),
          onTap: () {},
        ),
        ListTile(
          title: const Text('استخدام'),
          leading: const Icon(
            Icons.person_add_alt_1_outlined,
            size: 35,
          ),
          onTap: () {},
        )
      ],
    );
  }
}
