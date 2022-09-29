import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../classes/hex_color.dart';
import '../../../consts/textconstant.dart';

class FeedUserModel extends StatefulWidget {
  final String userPhotoUrl;
  final String carPlate;
  const FeedUserModel({Key? key, required this.userPhotoUrl, required this.carPlate}) : super(key: key);

  @override
  State<FeedUserModel> createState() => _FeedUserModelState();
}

class _FeedUserModelState extends State<FeedUserModel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 65,
      decoration: BoxDecoration(
          // color: Color.fromARGB(177, 255, 255, 254),
          // gradient: const LinearGradient(colors: [
          //  Color.fromRGBO(211,255,82, 1)
          // ]),
          borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(
                      color: Color.fromARGB(177, 28, 32, 1), width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                child: Center(
                    //https://firebasestorage.googleapis.com/v0/b/homeparty-f3290.appspot.com/o/user_7sGnxz8TF4YfjsUzJDysDs1C0gD2.jpg?alt=media&token=18c421d5-4019-4327-aad3-962d0bca8842.jpg
                    child: Container(
                  decoration: BoxDecoration(
                     borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          HexColor("#fff").withOpacity(0.6), BlendMode.dstATop),
                      image: NetworkImage(
                        widget.userPhotoUrl,
                      ),
                    ),
                  ),
                )),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            AutoSizeText(
              widget.carPlate,
              maxFontSize: 14,
              maxLines: 1,
              style: pageNormalStyleBlack,
            )
          ],
        ),
      ),
    );
  }
}
