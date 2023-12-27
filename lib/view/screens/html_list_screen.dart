import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../model/api.dart';
import '../../controller/cart_provider.dart';

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
