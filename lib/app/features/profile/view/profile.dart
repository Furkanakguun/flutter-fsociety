import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:runaway/app/consts/textconstant.dart';
import 'package:runaway/app/features/login/view/welcome_page.dart';

import '../../../classes/hex_color.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  ScrollController _scrollViewController = ScrollController();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color.fromRGBO(211, 255, 82, 1),
        body: SingleChildScrollView(
          controller: _scrollViewController,
          child: Column(
            children: [
              SizedBox(height: 10),
              profilePageHeader(w),
              profileImage(w, h),
              Center(
                child: Text(
                  'Furkan Akgun',
                  style: pageNormalStyleGreyBigger,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                child: Divider(
                  height: 10,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                child: Container(
                  width: w,
                  height: 100,
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton.icon(
                          icon: const Icon(
                            FontAwesomeIcons.instagram,
                            size: 24,
                            color: Colors.black,
                          ),
                          label: Text(
                            "furkanakguun",
                            style: pageNormalStyleBlack,
                          ),
                          onPressed: () {},
                        ),
                        TextButton.icon(
                          icon: const Icon(
                            FontAwesomeIcons.twitter,
                            size: 24,
                            color: Colors.black,
                          ),
                          label: Text(
                            "fakgn",
                            style: pageNormalStyleBlack,
                          ),
                          onPressed: () {},
                        ),
                      ]),
                ),
              ),
              profileButtons(w),
            ],
          ),
        ));
  }

  Container profileButtons(double w) {
    return Container(
      width: w,
      height: 60,
      color: Colors.transparent,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
          onPressed: () {
            // Get.to(() => LoginPage());
          },
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          child: Ink(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20)),
            child: Container(
              width: w / 3,
              height: 45,
              alignment: Alignment.center,
              child: AutoSizeText(
                'Edit',
                style: subheaderStyleSmall,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {
            // Get.to(() => LoginPage());
          },
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          child: Ink(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20)),
            child: Container(
              width: w / 3,
              height: 45,
              alignment: Alignment.center,
              child: AutoSizeText(
                'I Need Help',
                style: subheaderStyleSmall,
              ),
            ),
          ),
        ),
        // SizedBox(
        //   width: 10,
        // ),
        // Container(
        //   width: 45,
        //   height: 45,
        //   decoration: BoxDecoration(
        //       border: Border.all(
        //           color: Color.fromARGB(255, 108, 44, 228), width: 1),
        //       borderRadius: BorderRadius.all(Radius.circular(50.0)),
        //       color: Colors.black54),
        //   child: Icon(
        //     Icons.person_add,
        //     size: 21,
        //     color: Colors.white54,
        //   ),
        // )
      ]),
    );
  }

  Container profileImage(double w, double h) {
    return Container(
      width: w,
      height: h / 3 - 50,
      color: Colors.transparent,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 150,
            height: 180,
            decoration: BoxDecoration(
              // color: Theme.of(context).primaryColor,
              border: Border.all(color: Colors.black, width: 3),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      HexColor("#fff").withOpacity(0.9), BlendMode.dstATop),
                  image: NetworkImage(
                    'https://firebasestorage.googleapis.com/v0/b/homeparty-f3290.appspot.com/o/user_e441Dm6jr8O3tcixUuEFTG5jJcp2.jpg?alt=media&token=b3d68f35-b1aa-4ef3-b25c-64722a38db38.jpg',
                  )),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }

  Container profilePageHeader(double w) {
    return Container(
      width: w,
      height: 70,
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.only(right: 20.0, top: 25),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(''),
          IconButton(
            onPressed: () {
              _showSettings(context);
            },
            icon: Icon(
              FontAwesomeIcons.gear,
              color: Colors.grey[800],
              size: 35,
            ),
          )
        ]),
      ),
    );
  }

  _showSettings(BuildContext context) {
    showModalBottomSheet(
        context: context,
        useRootNavigator: true,
        builder: (context) {
          return Container(
            height: 320.0,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Color.fromARGB(255, 17, 17, 17),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        child: Center(
                      child: SizedBox(
                          // width: 9 * size.width / 10,
                          child: Container(
                        width: 50,
                        height: 4,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                        ),
                      )),
                    )),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: ListTile(
                      title: Center(
                        child:
                            Text('Settings', style: pageNormalStyleYellowGreen),
                      ),
                      onTap: () {},
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: ListTile(
                      title: Center(
                        child: Text('Terms of Use',
                            style: pageNormalStyleYellowGreen),
                      ),
                      onTap: () {},
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: ListTile(
                      title: Center(
                        child: Text('Privacy Terms',
                            style: pageNormalStyleYellowGreen),
                      ),
                      onTap: () {},
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: ListTile(
                      title: Center(
                        child: Text('Log Out', style: pageButtonStyle),
                      ),
                      onTap: () {
                        Get.to(LoginScreen());
                      },
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  // Container(
                  //   decoration: new BoxDecoration(
                  //       color: Colors.grey[900],
                  //       borderRadius:
                  //           new BorderRadius.all(Radius.circular(10))),
                  //   child: ListTile(
                  //     title: Center(
                  //       child:
                  //           new Text('Cancel', style: subheaderStyleBoldPink),
                  //     ),
                  //     onTap: () {
                  //       Navigator.pop(context);
                  //     },
                  //   ),
                  // ),
                ],
              ),
            ),
          );
        });
  }
}
