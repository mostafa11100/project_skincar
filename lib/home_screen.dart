import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:skincare/details_const.dart';
import 'package:skincare/details_screen.dart';
import 'package:skincare/image_product.dart';
import 'package:skincare/name_product.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Home({super.key});
  TextEditingController controlle = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const CircleAvatar(
                // ignore: sort_child_properties_last
                child: Text(
                  "m",
                  style: TextStyle(fontSize: 30),
                ),
                radius: 50,
                backgroundColor: Colors.green,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "mariam@gmail.com",
                style: TextStyle(color: Color.fromARGB(255, 8, 8, 8)),
              ),
              const SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).popAndPushNamed("aboutus");
                },
                child: const Row(
                  children: [
                    Icon(Icons.help_center),
                    SizedBox(
                      width: 20,
                    ),
                    Text("about us"),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  SystemNavigator.pop();
                },
                child: const Row(
                  children: [
                    Icon(Icons.exit_to_app),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Exit"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(244, 242, 242, 242),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              const SizedBox(
                height: 100,
              ),
              const Row(
                children: [
                  Text(
                    "Hello",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    "Mariam",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 3,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Opacity(
                    opacity: .7,
                    child: Text(
                      "Let's Take Car of Your skin",
                      style: TextStyle(fontSize: 15),
                    )),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                padding: const EdgeInsets.all(10),
                child: TextField(
                  onEditingComplete: () {
                    if (controlle.text.isNotEmpty == true &&
                        name.contains(controlle.text)) {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return details(
                            image: images[controlle.text].toString(),
                            name: controlle.text,
                            dtails: detals[controlle.text]);
                      }));
                    }
                  },
                  controller: controlle,
                  decoration: const InputDecoration(
                      hintText: "search",
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "For You",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                child: ListView.builder(
                    itemCount: images.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, i) {
                      return Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return details(
                                    image: images[name[i]].toString(),
                                    name: name[i],
                                    dtails: detals[name[i]]);
                              }));
                            },
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              height: MediaQuery.of(context).size.height / 3,
                              width: MediaQuery.of(context).size.width / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                        images[name[i]].toString(),
                                      ))),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 150,
                            child: Opacity(
                              opacity: .7,
                              child: Text(
                                name[i],
                                style: const TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          )
                        ],
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
