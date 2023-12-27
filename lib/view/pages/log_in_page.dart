import 'package:flutter/material.dart';
import 'package:nahal_it/view/pages/sign_in_page.dart';
import 'package:nahal_it/widgets/color&font_managment.dart';

import '../../home_screen.dart';

class LogInTwo extends StatefulWidget {
  const LogInTwo({super.key});
  static const String tag = '/LogInTwoRoute';
  @override
  State<LogInTwo> createState() => _SignInTwoState();
}

class _SignInTwoState extends State<LogInTwo> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.teal,
              Color.fromARGB(255, 213, 241, 198),
              // Color.fromARGB(255, 2, 179, 11),
            ],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.0, 1.5),
            stops: [0.0, 1.5],
            tileMode: TileMode.clamp,
          )),
          child: Column(children: [
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                'Continue with E-mail',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
            ),
            //  SizedBox(height: size.width / 9),
            SizedBox(height: size.width / 6),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              width: size.width / 1.2,
              child: TextField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 3, color: Colors.white),
                        borderRadius: BorderRadius.circular(10)),
                    fillColor: Colors.white,
                    // border: Bo
                    prefixIcon: const Icon(Icons.call_rounded),
                    labelText: 'شماره تلفن',
                    labelStyle: login,
                    hintText: 'شماره را وارد کنید',
                    hintStyle: log),
              ),
            ),
            SizedBox(height: size.width / 6),

            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              width: size.width / 1.2,
              child: TextField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 3, color: Colors.white),
                        borderRadius: BorderRadius.circular(10)),
                    fillColor: Colors.white,
                    // border: Bo
                    prefixIcon: const Icon(Icons.password_rounded),
                    labelText: 'رمز  ',
                    labelStyle: login,
                    hintText: 'رمز',
                    hintStyle: log),
              ),
            ),
            const Spacer(), const Text('I forgot my password'),
            // SizedBox(height: size.height / 2.5),
            SizedBox(
              width: size.width / 1.2,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  child: const Text(
                    'ادامه',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
            ),
            const SizedBox(height: 10),

            SizedBox(
              width: size.width / 1.2,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignIn()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  child: const Text(
                    'حساب ندارم',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
            ),

            const SizedBox(height: 30),
          ]),
        ),
      ),
    );
  }
}
