import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'log_in_page.dart';

class LogInOne extends StatefulWidget {
  const LogInOne({super.key});

  @override
  State<LogInOne> createState() => _LogInOneState();
}

class _LogInOneState extends State<LogInOne> {
  final controllerr = PageController();

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
            colors: [Color(0x006b73ff), Color(0x00000dff)],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.2, 1.0),
            stops: [0.5, 1.0],
            // tileMode: TileMode.clamp,
          )),
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            SizedBox(
              height: size.height / 1.5,
              width: double.infinity,
              child: PageView.builder(
                  itemCount: 3,
                  controller: controllerr,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: size.height / 1.0,
                      width: double.infinity,
                      child: Stack(children: [
                        // container and circlur avatar num 1
                        Positioned(
                          right: 10,
                          top: 90,
                          child: CircleAvatar(
                            radius: 40,
                            child: Center(
                              child: Image.asset(
                                "images/layers.png",
                                scale: 9,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 30,
                          top: 60,
                          child: Container(
                            height: size.width / 9.9,
                            width: size.width / 3.0,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.check_circle_rounded,
                                  color: Colors.blue,
                                  size: 30,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 5,
                                      width: size.width / 5,
                                      decoration: BoxDecoration(
                                          color: Colors.lightBlueAccent,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                    Container(
                                      height: 5,
                                      width: size.width / 7,
                                      decoration: BoxDecoration(
                                          color: Colors.lightBlueAccent,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        // container and circlur avatar num 2
                        Positioned(
                          left: 40,
                          top: 170,
                          child: CircleAvatar(
                            radius: 50,
                            child: Image.asset(
                              "images/python.png",
                              scale: 6,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 60,
                          top: 140,
                          child: Container(
                              height: size.width / 9.9,
                              width: size.width / 3.0,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Icon(
                                    Icons.check_circle_rounded,
                                    color: Colors.blue,
                                    size: 30,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: 5,
                                        width: size.width / 5,
                                        decoration: BoxDecoration(
                                            color: Colors.lightBlueAccent,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                      ),
                                      Container(
                                        height: 5,
                                        width: size.width / 7,
                                        decoration: BoxDecoration(
                                            color: Colors.lightBlueAccent,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                      ),
                                    ],
                                  )
                                ],
                              )),
                        ),
                        ///////////////////////////////////////////////
                        // container and circlur avatar num 3
                        Positioned(
                          left: size.width / 3.5,
                          top: size.height / 2.6,
                          child: CircleAvatar(
                            radius: 60,
                            child: Center(
                              child: Image.asset(
                                "images/html5.png",
                                scale: 6,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: size.width / 2.8,
                          top: size.height / 2.8,
                          child: Container(
                              height: size.width / 9.9,
                              width: size.width / 2.5,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Icon(
                                    Icons.check_circle_rounded,
                                    color: Colors.blue,
                                    size: 30,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: 5,
                                        width: size.width / 5,
                                        decoration: BoxDecoration(
                                            color: Colors.lightBlueAccent,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                      ),
                                      Container(
                                        height: 5,
                                        width: size.width / 7,
                                        decoration: BoxDecoration(
                                            color: Colors.lightBlueAccent,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                      ),
                                    ],
                                  )
                                ],
                              )),
                        ),
                        const Positioned(
                          bottom: 30,
                          right: 10,
                          child: Text(
                            "نهال آی تی اولین وبسایت خدماتی ",
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Positioned(
                          bottom: 0,
                          right: 10,
                          child: Text(
                            " فروشگاهی در حوزه آی تی در ایران ",
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ]),
                    );
                  }),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: SmoothPageIndicator(
                controller: controllerr,
                count: 3,
                effect: const ExpandingDotsEffect(
                    dotColor: Colors.greenAccent,
                    dotHeight: 10,
                    dotWidth: 10,
                    activeDotColor: Colors.tealAccent),
              ),
            ),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LogInTwo()));
                },
                child: Container(
                  width: 230,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.login),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'ادامه با شماره',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20)
          ]),
        ),
      ),
    );
  }
}
