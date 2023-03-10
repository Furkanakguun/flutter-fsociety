import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fsociety/app/classes/fadeanimation.dart';
import 'package:fsociety/app/classes/hex_color.dart';
import 'package:fsociety/app/features/general/home.dart';
import 'package:fsociety/app/features/login/view/forgot_password.dart';
import 'package:fsociety/app/features/login/view/signup.dart';
import 'package:fsociety/app/features/login/view/signin.dart';
import '../../../consts/textconstant.dart';

enum FormData {
  Email,
  password,
}

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Color enabled = Color.fromARGB(255, 63, 56, 89);
  Color enabledtxt = Colors.white;
  Color deaible = Colors.grey;
  Color backgroundColor = Color.fromARGB(255, 26, 25, 27);
  bool ispasswordev = true;
  FormData? selected;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(211, 255, 82, 1)),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                FadeAnimation(
                  delay: 1,
                  child: Column(
                    children: [
                      Text(
                        "FSociety",
                        style: pageTitleStyle2,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "Flutter",
                        style: pageTitleStyle,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 120,
                ),
                FadeAnimation(
                  delay: 1,
                  child: Text(
                    "A Social Network",
                    style: pageNormalStyleGrey,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => SignInPage());
                    },
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Color.fromARGB(255, 0, 0, 0),
                            Color.fromARGB(255, 0, 0, 0)
                          ]),
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        width: 280,
                        height: 45,
                        alignment: Alignment.center,
                        child: Text(
                          'Sign In',
                          style: pageNormalStyle,
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => SignUpPage());
                    },
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Color.fromARGB(255, 0, 0, 0),
                            Color.fromARGB(255, 0, 0, 0)
                          ]),
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        width: 280,
                        height: 45,
                        alignment: Alignment.center,
                        child: Text(
                          'Register',
                          style: pageNormalStyle,
                        ),
                      ),
                    ),
                  ),
                ),
                //End of Center Card
                //Start of outer card
                SizedBox(height: 20),
                FadeAnimation(
                  delay: 1,
                  child: Container(
                    width: w / 2 + 170,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AutoSizeText("By registering, you accept the",
                                maxLines: 1, style: pageNormalStyleGreySmall),
                            GestureDetector(
                              onTap: () {},
                              child: AutoSizeText("terms and conditions",
                                  maxLines: 1,
                                  style: TextStyle(
                                      color: Colors.black,
                                      decoration: TextDecoration.underline,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.5,
                                      fontSize: 14)),
                            ),

                            //and the privacy policy
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AutoSizeText("and the ",
                                maxLines: 1, style: pageNormalStyleGreySmall),
                            GestureDetector(
                              onTap: () {},
                              child: AutoSizeText("privacy policy",
                                  maxLines: 1,
                                  style: TextStyle(
                                      color: Colors.black,
                                      decoration: TextDecoration.underline,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.5,
                                      fontSize: 14)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
