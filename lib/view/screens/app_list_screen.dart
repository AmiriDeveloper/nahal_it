import 'package:flutter/material.dart';
import 'package:nahal_it/controller/cart_provider.dart';
import 'package:nahal_it/model/api.dart';
import 'package:provider/provider.dart';

class ContainerWithIndicator extends StatelessWidget {
  const ContainerWithIndicator({
    super.key,
    required this.size,
    required PageController controller,
  }) : _controller = controller;

  final Size size;
  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    // final cart = Provider.of<CartProvider>(context);
    final cart = Provider.of<Cart>(context);
    return SizedBox(
      height: size.height / 1.5,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: PageView.builder(
            itemCount: 6,
            controller: _controller,
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
                      const Text(
                        "ویژه Html قالب های",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Image.asset("images/photo.jpg"),
                      Container(
                          height: 30,
                          width: 100,
                          color: Colors.grey[400],
                          child: const Center(child: Text("HTML قالب"))),
                      const Text("قالب در دست ساخت ابروان"),
                      const Text(
                        "unName",
                        textDirection: TextDirection.rtl,
                      ),
                      const Text(
                        "119.0",
                        textDirection: TextDirection.rtl,
                      ),
                      // اینجا باید این قالب به سبد افزوده شود
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
    );
  }
}
