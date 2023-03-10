import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:fsociety/app/consts/textconstant.dart';
import 'package:fsociety/app/features/general/home.dart';
import 'package:fsociety/app/features/login/view/forgot_password.dart';
import 'package:fsociety/app/features/login/view/signup.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isLogging = false;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Container buildRegisterButton() {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Container(
        width: queryData.size.width,
        height: 50,
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(
                    color: Theme.of(context).primaryColor, width: 1))),
        child: Center(
          child: RichText(
            text: TextSpan(
                text: "Don't have an account?",
                style: TextStyle(color: Colors.grey[500], fontSize: 18),
                children: [
                  TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.to(() => SignUpPage()),
                      text: " Sign Up",
                      style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold))
                ]),
          ),
        ));
  }

  GestureDetector buildGoogleSignInButton(double w, double h) {
    return GestureDetector(
        // onTap: () => authBloc.loginGoogle(),
        //onTap: login,
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 90.0),
      child: Container(
        //color: Colors.black,
        width: w,
        height: 60.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          image: DecorationImage(
            image: AssetImage(
              'assets/images/google_signin_button.png',
            ),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.purple.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: true,
      backgroundColor: Color.fromRGBO(211, 255, 82, 1),
      //  appBar: AppBar(backgroundColor: Color.fromRGBO(211,255,82, 1)),
      body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            margin: EdgeInsets.all(12),
            child: ListView(children: [
              Column(children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: (() {
                          Get.back();
                        }),
                        icon: Icon(FontAwesomeIcons.arrowLeft))
                  ],
                ),
                SizedBox(
                  height: h / 3 - 50,
                ),
                Text(
                  "Sign In",
                  style: subheaderStyle,
                ),
                new SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // gradient: const LinearGradient(colors: [
                      //   Color.fromARGB(255, 10, 66, 99),
                      //   // Color.fromARGB(255, 10, 66, 99),
                      //   Color.fromARGB(255, 90, 4, 54),
                      // ]),
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    child: TextField(
                      cursorColor: Colors.black,
                      controller: emailController,
                      decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.grey),
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.black,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent, width: 1),
                              borderRadius: BorderRadius.circular(30)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent, width: 1),
                              borderRadius: BorderRadius.circular(30)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // gradient: const LinearGradient(colors: [
                      //   Color.fromARGB(255, 10, 66, 99),
                      //   // Color.fromARGB(255, 10, 66, 99),
                      //   Color.fromARGB(255, 90, 4, 54),
                      // ]),
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    child: TextField(
                      cursorColor: Colors.black,
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: const TextStyle(color: Colors.grey),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.black,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent, width: 1),
                              borderRadius: BorderRadius.circular(30)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent, width: 1),
                              borderRadius: BorderRadius.circular(30)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                  ),
                ),
                SizedBox(height: w * 0.02),
                Center(
                  child: RichText(
                    text: TextSpan(
                        text: "Forgotten your login details?",
                        style: pageNormalStyleGreyBig,
                        children: [
                          TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap =
                                    () => Get.to(() => ForgotPasswordScreen()),
                              text: " Get Help",
                              style: pageNormalStyleGreyBig)
                        ]),
                  ),
                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    Get.to(HomePage());
                    // setState(() {
                    //   isLogging = true;
                    // });
                    // Get.defaultDialog(
                    //   title: "",
                    //   titleStyle: subheaderStyle,
                    //   backgroundColor: Color.fromARGB(255, 22, 21, 21),
                    //   content: Center(
                    //     child: CircularProgressIndicator(),
                    //   ),
                    //   barrierDismissible: true,
                    //   radius: 25,
                    // );
                    // AuthController.instance.login(emailController.text.trim(),
                    //     passwordController.text.trim());
                    // setState(() {
                    //   isLogging = false;
                    // });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 35),
                    child: Container(
                      width: w,
                      height: 50,
                      decoration: BoxDecoration(
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Colors.grey.withOpacity(0.5),
                          //     spreadRadius: 0.1,
                          //     blurRadius: 1,
                          //     offset: Offset(0, 2), // changes position of shadow
                          //   ),
                          // ],
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueGrey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                          color: Color.fromARGB(255, 0, 0, 0),
                          //    gradient: const LinearGradient(colors: [
                          //   Color.fromARGB(255, 90, 8, 83),
                          //   Color.fromARGB(255, 41, 18, 122)
                          // ]),
                          borderRadius: BorderRadius.circular(30)),
                      child: isLogging
                          ? Center(child: CircularProgressIndicator())
                          : Center(
                              child: Text(
                                "Login",
                                style: pageNormalStyle,
                              ),
                            ),
                    ),
                  ),
                ),
              ] // buildRegisterButton()
                  ),
            ]),
          )),
    );
  }
}
