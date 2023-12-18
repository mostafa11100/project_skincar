import 'package:flutter/material.dart';

class details extends StatelessWidget {
  const details(
      {super.key, required this.image, required this.name, this.dtails});
  final String image;
  final String name;
  final dtails;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 224, 223, 223),
          title: Text(name),
        ),
        backgroundColor: Color.fromARGB(255, 255, 254, 254),
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Image.asset(image),
              Positioned(
                bottom: 0,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 223, 220, 220),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Opacity(
                            opacity: .9,
                            child: Text(
                              "Details ",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        const SizedBox(),
                        Opacity(
                            opacity: .5,
                            child: Text(
                              dtails,
                              style: const TextStyle(fontSize: 22),
                              maxLines: 5,
                            ))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
