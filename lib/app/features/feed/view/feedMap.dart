import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../consts/textconstant.dart';
import '../model/feed_user_model.dart';

class FeedMapPage extends StatefulWidget {
  FeedMapPage({Key? key}) : super(key: key);

  @override
  State<FeedMapPage> createState() => _FeedMapPageState();
}

class _FeedMapPageState extends State<FeedMapPage> {
  ScrollController scrollController =
      ScrollController(initialScrollOffset: 200);

  // late GoogleMapController googleMapController;
  @override
  Widget build(BuildContext context) {
    Size size = Get.size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomScrollView(
        controller: scrollController,
        physics: ClampingScrollPhysics(),
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: true,
            expandedHeight: size.height - 200,
            toolbarHeight: 10,
            backgroundColor: Colors.white,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(30.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(211, 255, 82, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  // border: Border(
                  //   left: BorderSide(width: 2.0, color: Colors.black),
                  // ),
                ),
                height: 30,
                width: size.width,
                child: Center(
                  child: SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            // width: 9 * size.width / 10,
                            child: Container(
                          width: 50,
                          height: 4,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.black,
                          ),
                        )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: GestureDetector(
                onVerticalDragStart: (details) {},
                child: Stack(children: [
                  Container(
                    width: size.width,
                    height: size.height,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        // colorFilter: ColorFilter.mode(
                        //     HexColor("#fff").withOpacity(0.6), BlendMode.color),
                        image: AssetImage(
                          'assets/images/map.jpg',
                        ),
                      ),
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
                                      color: Color.fromRGBO(216, 250, 8, 0.7),
                                      width: 3),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0)),
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
                // child: GoogleMap(
                //     zoomGesturesEnabled: true,
                //     myLocationButtonEnabled: false,
                //     myLocationEnabled: false,
                //     mapType: MapType.normal,
                //     initialCameraPosition: CameraPosition(
                //       target: LatLng(39.925533, 32.866287),
                //       zoom: 10,
                //     ),
                //     gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>[
                //       new Factory<OneSequenceGestureRecognizer>(
                //         () => new EagerGestureRecognizer(),
                //       ),
                //     ].toSet(),
                //     onMapCreated: (controller) {
                //       googleMapController = controller;
                //     }),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: size.width,
              height: 300,
              color: Color.fromRGBO(211, 255, 82, 1),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 3),
                child: Column(
                  children: [
                    Text(
                      'Start Exploring',
                      style: pageNormalStyleBlack,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
