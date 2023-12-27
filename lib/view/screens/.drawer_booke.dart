class DrawerBook extends StatelessWidget {
  DrawerBook({super.key});
  final urls = [
    'https://www.youtube.com/sigma',
    'https://telegram.me/hamkarwp',
    'https://www.facebook.com/sigma',
    'https://twitter.com/sigma',
    'https://instagram.com/sigma',
  ];

  // تعریف متغیر برای آیکون ها
  final icons = [
    FontAwesomeIcons.youtube,
    FontAwesomeIcons.telegram,
    FontAwesomeIcons.facebook,
    FontAwesomeIcons.xTwitter,
    FontAwesomeIcons.instagram,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 20),
      // ایجاد دایره ی پروفایل تصویری کاربر
      CircleAvatar(
        backgroundColor: Colors.white,
        // تعریف شعاع دایره ی پروفایل تصویری کاربر
        radius: 40,
        child: Icon(
          CupertinoIcons.person,
          // تعریف رنگ آیکون بر اساس رنگ پس زمینه ی themeData
          color: Theme.of(context).primaryColor,
          size: 40,
        ),
      ),
      // اضافه کردن فاصله ی بین دایره ی پروفایل تصویری کاربر و متن
      const SizedBox(height: 20),
      const Text(
        'سلام به کاربر عزیز',
        style: profileTitle,
      ),
      // اضافه کردن فاصله ی بین متن ها
      const SizedBox(height: 5),
      ElevatedButton(
        style: OutlinedButton.styleFrom(
          elevation: 5,
          backgroundColor: Colors.white,
          foregroundColor: Theme.of(context).primaryColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LogInTwo(),
            ),
          );
        },
        child: const Text(
          'ورود و عضویت',
          style: elevButtonText,
        ),
      ),

      const Divider(
        color: Colors.white70,
        height: 20,
        thickness: 2,
        endIndent: 20,
        indent: 20,
      ),

      InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const OrdersScreen()));
        },
        child: ListTile(
          leading: Icon(
            Icons.phone_outlined,
            size: 28,
            color: Colors.grey[400],
          ),
          title: const Text(
            'تماس با ما',
            style: profileTitle,
          ),
        ),
      ),

      ListTile(
        leading: Icon(
          Icons.menu_book_outlined,
          size: 28,
          color: Colors.grey[400],
        ),
        title: const Text(
          'ثبت سفارش',
          style: profileTitle,
        ),
      ),

      ListTile(
          leading: Icon(
            Icons.shopping_cart_outlined,
            size: 28,
            color: Colors.grey[400],
          ),
          title: const Text(
            'استخدام',
            style: profileTitle,
          )),
      const Divider(
        color: Colors.white70,
        height: 20,
        thickness: 2,
        endIndent: 20,
        indent: 20,
      ),
      Padding(
        padding: const EdgeInsets.only(
          top: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: icons
              .asMap()
              .entries
              .map(
                (entry) => IconButton(
                  onPressed: () {
                    launchUrl(Uri.parse(urls[entry.key]));
                  },
                  icon: FaIcon(
                    entry.value,
                    color: Colors.white,
                  ),
                ),
              )
              .toList(), // تبدیل map به list
        ),
      ),
    ]);
  }
}
