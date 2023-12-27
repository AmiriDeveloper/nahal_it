import 'package:flutter/material.dart';
import 'package:nahal_it/controller/cart_provider.dart';
import 'package:nahal_it/view/pages/log_in_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

//AppLocale.title.getString(context);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Cart(),
      child: Builder(builder: (BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,

          // localization.getLanguageName(languageCode: 'fa');  // farsi
          // localization.getLanguageName(languageCode: 'ar');  // arabic

          // localization.getLanguageName();  // get language name depend on current app locale
          // supportedLocales: localization.supportedLocales,
          // localizationsDelegates: localization.localizationsDelegates,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),

          home: const Scaffold(
            drawer: Drawer(
              // صدا زدن رنگ پس زمینه از themeData
              backgroundColor: Colors.deepPurple,
              // child: DrawerBook(),
            ),
            body: //CartScreen()
                //  SellingPage(),
                //  WorkSamples(),
                //  const HomeScreen(),
                //   SplashScreen(),
                // SignIn(),
                LogInTwo(),
          ),
        );
      }),
    );
  }
}
