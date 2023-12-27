import 'package:flutter/material.dart';
import 'package:nahal_it/widgets/color&font_managment.dart';

import '../../home_screen.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});
  static const String tag = '/LogInTwoRoute';
  @override
  State<SignIn> createState() => _SignInTwoState();
}

class _SignInTwoState extends State<SignIn> {
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
              Colors.white,
              Colors.green,
            ],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.0, 1.5),
            stops: [0.0, 0.4],
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  width: size.width / 2.4,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 3, color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                      fillColor: Colors.white,
                      // border: Bo
                      prefixIcon: const Icon(Icons.person),
                      hintText: 'نام را وارد کنید',
                      hintStyle: log,
                      labelText: 'نام',
                      labelStyle: login,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  width: size.width / 2.4,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 3, color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                      fillColor: Colors.white,
                      // border: Bo
                      prefixIcon: const Icon(Icons.person),
                      hintText: 'نام خانوادگی را ورد کنید',
                      hintStyle: log,
                      labelText: 'نام خانوادگی',
                      labelStyle: login,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: size.width / 6),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              width: size.width / 1.12,
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
              width: size.width / 1.12,
              child: TextField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 3, color: Colors.white),
                        borderRadius: BorderRadius.circular(10)),
                    fillColor: Colors.white,
                    // border: Bo
                    prefixIcon: const Icon(Icons.password_sharp),
                    labelText: 'رمز یکبار مصرف',
                    labelStyle: login,
                    hintText: 'رمز را وارد کنید',
                    hintStyle: log),
              ),
            ),
            const Spacer(),

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
                    'ذخیره',
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
