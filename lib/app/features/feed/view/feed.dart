import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:runaway/app/classes/hex_color.dart';
import 'package:runaway/app/consts/textconstant.dart';

import '../model/feed_user_model.dart';

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
    return Scaffold(
      backgroundColor: Colors.black,
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Color.fromRGBO(211,255,82, 1),
      //   onPressed: () {},
      //   tooltip: "",
      //   child: const Icon(
      //     Icons.search,
      //     color: Colors.black87,
      //   ),
      // ),
      body: Stack(children: [
        Container(
          width: w,
          height: h,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              // colorFilter: ColorFilter.mode(
              //     HexColor("#fff").withOpacity(0.6), BlendMode.color),
              image: const AssetImage(
                'assets/images/map.jpg',
              ),
            ),
          ),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: w - 50,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white24.withOpacity(0.1),
                  // gradient: const LinearGradient(colors: [
                  //  Color.fromRGBO(211,255,82, 1)
                  // ]),
                  borderRadius: BorderRadius.circular(10)),
              child: ListView(scrollDirection: Axis.horizontal, children: [
                FeedUserModel(
                  carPlate: "06 FAK 98",
                  userPhotoUrl:
                      'https://firebasestorage.googleapis.com/v0/b/homeparty-f3290.appspot.com/o/user_e441Dm6jr8O3tcixUuEFTG5jJcp2.jpg?alt=media&token=b3d68f35-b1aa-4ef3-b25c-64722a38db38.jpg',
                ),
                FeedUserModel(
                  carPlate: "06 EB 7776",
                  userPhotoUrl:
                      'https://firebasestorage.googleapis.com/v0/b/homeparty-f3290.appspot.com/o/user_7sGnxz8TF4YfjsUzJDysDs1C0gD2.jpg?alt=media&token=18c421d5-4019-4327-aad3-962d0bca8842.jpg',
                ),
                FeedUserModel(
                  carPlate: "06 AL 5678",
                  userPhotoUrl:
                      'https://firebasestorage.googleapis.com/v0/b/homeparty-f3290.appspot.com/o/user_8woybaKObGeYVERNsMKSOv59xBh2.jpg?alt=media&token=b178847c-94da-4603-a321-d41bf2802343.jpg',
                ),
                FeedUserModel(
                  carPlate: "06 CMN 92",
                  userPhotoUrl:
                      'https://firebasestorage.googleapis.com/v0/b/homeparty-f3290.appspot.com/o/user_F1UHweWUsBhDf1F5UNsymT2TPI82.jpg?alt=media&token=37de0643-aa14-4f08-af98-ca3555548d4c.jpg',
                ),
                FeedUserModel(
                  carPlate: "06 AYT 789",
                  userPhotoUrl:
                      'https://firebasestorage.googleapis.com/v0/b/homeparty-f3290.appspot.com/o/user_791r4pQlWGWv6KHI1McLkE1vJtO2.jpg?alt=media&token=aa0b4894-4a05-45e4-a43b-b90c50dfb25f.jpg',
                ),
                FeedUserModel(
                  carPlate: "06 FAK 98",
                  userPhotoUrl:
                      'https://firebasestorage.googleapis.com/v0/b/homeparty-f3290.appspot.com/o/user_e441Dm6jr8O3tcixUuEFTG5jJcp2.jpg?alt=media&token=b3d68f35-b1aa-4ef3-b25c-64722a38db38.jpg',
                ),
                FeedUserModel(
                  carPlate: "06 EB 7776",
                  userPhotoUrl:
                      'https://firebasestorage.googleapis.com/v0/b/homeparty-f3290.appspot.com/o/user_7sGnxz8TF4YfjsUzJDysDs1C0gD2.jpg?alt=media&token=18c421d5-4019-4327-aad3-962d0bca8842.jpg',
                ),
                FeedUserModel(
                  carPlate: "06 AL 5678",
                  userPhotoUrl:
                      'https://firebasestorage.googleapis.com/v0/b/homeparty-f3290.appspot.com/o/user_8woybaKObGeYVERNsMKSOv59xBh2.jpg?alt=media&token=b178847c-94da-4603-a321-d41bf2802343.jpg',
                ),
                FeedUserModel(
                  carPlate: "06 CMN 92",
                  userPhotoUrl:
                      'https://firebasestorage.googleapis.com/v0/b/homeparty-f3290.appspot.com/o/user_F1UHweWUsBhDf1F5UNsymT2TPI82.jpg?alt=media&token=37de0643-aa14-4f08-af98-ca3555548d4c.jpg',
                ),
                FeedUserModel(
                  carPlate: "06 AYT 789",
                  userPhotoUrl:
                      'https://firebasestorage.googleapis.com/v0/b/homeparty-f3290.appspot.com/o/user_791r4pQlWGWv6KHI1McLkE1vJtO2.jpg?alt=media&token=aa0b4894-4a05-45e4-a43b-b90c50dfb25f.jpg',
                ),
              ]),
            )),
        Positioned(
          bottom: 30,
          right: 10,
          child: FloatingActionButton(
            backgroundColor: Color.fromRGBO(211, 255, 82, 1),
            onPressed: () {},
            tooltip: "",
            child: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: Colors.black,
            ),
          ),
        ),
        Positioned(
          top: 40,
          left: 20,
          child: FloatingActionButton(
            backgroundColor: Color.fromRGBO(211, 255, 82, 1),
            onPressed: () {},
            tooltip: "",
            child: const Icon(FontAwesomeIcons.bars),
          ),
        ),
        Positioned(
          top: 40,
          right: 20,
          child: Container(
            width: 185,
            height: 65,
            decoration: BoxDecoration(
                color: Color.fromARGB(177, 255, 255, 254),
                // gradient: const LinearGradient(colors: [
                //  Color.fromRGBO(211,255,82, 1)
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
    );
  }
}
