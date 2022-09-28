import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:runaway/app/classes/hex_color.dart';
import 'package:runaway/app/consts/textconstant.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  var itemsActionBar = [
    FloatingActionButton(
      backgroundColor: Colors.greenAccent,
      onPressed: () {},
      child: Icon(Icons.add),
    ),
    FloatingActionButton(
      backgroundColor: Colors.indigoAccent,
      onPressed: () {},
      child: Icon(Icons.camera),
    ),
    FloatingActionButton(
      backgroundColor: Colors.orangeAccent,
      onPressed: () {},
      child: Icon(Icons.card_giftcard),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 235, 217, 179),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromRGBO(216, 250, 8, 1),
          onPressed: () {},
          tooltip: "",
          child: const Icon(
            Icons.search,
            color: Colors.black87,
          ),
        ),
        body: Stack(children: [
          Container(
            width: w,
            height: h,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    HexColor("#fff").withOpacity(0.6), BlendMode.dstATop),
                image: const AssetImage(
                  'assets/images/map.jpg',
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 5,
              left: 20,
              child: Container(
                width: w - 100,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.white24.withOpacity(0.1),
                    // gradient: const LinearGradient(colors: [
                    //  Color.fromRGBO(216, 250, 8, 1)
                    // ]),
                    borderRadius: BorderRadius.circular(10)),
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 30,
                    ),
                  ),
                ]),
              )
              // child: ElevatedButton(
              //   onPressed: () {},
              //   style: ElevatedButton.styleFrom(
              //       padding: EdgeInsets.zero,
              //       shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(40))),
              //   child: Ink(
              //     decoration: BoxDecoration(
              //         color: Color.fromRGBO(216, 250, 8, 1),
              //         // gradient: const LinearGradient(colors: [
              //         //  Color.fromRGBO(216, 250, 8, 1)
              //         // ]),
              //         borderRadius: BorderRadius.circular(40)),
              //     child: Container(
              //       width: 300,
              //       height: 50,
              //       alignment: Alignment.center,
              //       child: Text(
              //         'Ride On',
              //         style: pageNormalStyleGreyBig,
              //       ),
              //     ),
              //   ),
              // ),
              ),
          Positioned(
            top: 20,
            left: 20,
            child: FloatingActionButton(
              backgroundColor: Color.fromRGBO(216, 250, 8, 0.7),
              onPressed: () {},
              tooltip: "",
              child: const Icon(FontAwesomeIcons.bars),
            ),
          ),
          Positioned(
            top: 20,
            right: 20,
            child: Container(
              width: 180,
              height: 65,
              decoration: BoxDecoration(
                  color: Color.fromARGB(177, 255, 255, 254),
                  // gradient: const LinearGradient(colors: [
                  //  Color.fromRGBO(216, 250, 8, 1)
                  // ]),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                              color: Color.fromRGBO(216, 250, 8, 0.7), width: 3),
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                        child: Center(
                            child: Icon(
                          FontAwesomeIcons.car,
                          color: Colors.white,
                        )),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    AutoSizeText(
                      "Welcome Back \n 06 FAK 98",
                      style: pageNormalStyleBlack,
                    )
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
