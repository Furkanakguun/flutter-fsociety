import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../../consts/textconstant.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late TextEditingController emailController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();
  late TextEditingController passwordChechController = TextEditingController();
  late TextEditingController fullNameController = TextEditingController();
  late TextEditingController dateOfBirthController = TextEditingController();
  late TextEditingController instagramController = TextEditingController();
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1900, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  void showIosDatePicker(BuildContext context) {
    showCupertinoModalPopup(
        context: context,
        builder: (_) => Container(
              height: 190,
              color: Color.fromARGB(255, 255, 255, 255),
              child: Column(
                children: [
                  Container(
                    height: 180,
                    child: CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.date,
                        initialDateTime: DateTime.now(),
                        onDateTimeChanged: (val) {
                          setState(() {
                            selectedDate = val;
                          });
                          // _dateController.text = _dateFormatter.format(val);
                        }),
                  ),
                ],
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(216, 250, 8, 1),
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      // ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
            margin: EdgeInsets.all(12),
            child: ListView(children: [
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Let's get you in",
                  style: subheaderStyle,
                ),
                Text(
                  "We need some information",
                  style: pageNormalStyleGrey,
                ),
                SizedBox(
                  height: 15,
                ),
                emailField(),
                passwordField(),
                passwordCheckField(),
                fullNameField(),
                birthDateField(),
                // instagramField(),
                CheckboxListTile(
                  value: false,
                  onChanged: null,
                  title: AutoSizeText(
                    "I agree the Terms Of Policy of terms ı accept every line oc policy agreement about bla bla paper and everytrhin they wanted to be",
                    maxLines: 3,
                    style: pageNormalStyleGrey,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // _showIOS_DatePicker(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 35),
                    child: Container(
                      width: w,
                      height: 50,
                      decoration: BoxDecoration(
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
                      child: Center(
                        child: Text(
                          "Sign Up",
                          style: pageNormalStyle,
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ])),
      ),
    );
  }

  handleSignUp() {
    // AuthController.instance
    //     .register(emailController.text.trim(), passwordController.text.trim());
  }

  Padding instagramField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [
            Color.fromARGB(255, 10, 66, 99),
            // Color.fromARGB(255, 10, 66, 99),
            Color.fromARGB(255, 90, 4, 54),
          ]),
          borderRadius: BorderRadius.circular(30),
        ),
        child: TextField(
          cursorColor: Colors.white,
          controller: instagramController,
          decoration: InputDecoration(
              hintText: "Instagram",
              hintStyle: TextStyle(color: Colors.grey),
              prefixIcon: Icon(
                FontAwesomeIcons.instagram,
                color: Colors.white54,
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent, width: 1),
                  borderRadius: BorderRadius.circular(30)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent, width: 1),
                  borderRadius: BorderRadius.circular(30)),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
        ),
      ),
    );
  }

  Padding birthDateField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
          onTap: () {
            showIosDatePicker(context);
          },
          readOnly: true,
          cursorColor: Colors.black,
          controller: dateOfBirthController,
          decoration: InputDecoration(
              hintText: "Birth Date",
              hintStyle: TextStyle(color: Colors.grey),
              prefixIcon: Icon(
                Icons.date_range,
                color: Colors.black,
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent, width: 1),
                  borderRadius: BorderRadius.circular(30)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent, width: 1),
                  borderRadius: BorderRadius.circular(30)),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
        ),
      ),
    );
  }

  Padding fullNameField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
          controller: fullNameController,
          decoration: InputDecoration(
              hintText: "Full Name",
              hintStyle: TextStyle(color: Colors.grey),
              prefixIcon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent, width: 1),
                  borderRadius: BorderRadius.circular(30)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent, width: 1),
                  borderRadius: BorderRadius.circular(30)),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
        ),
      ),
    );
  }

  Padding passwordCheckField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
          // gradient: const LinearGradient(colors: [
          //   Color.fromARGB(255, 10, 66, 99),
          //   // Color.fromARGB(255, 10, 66, 99),
          //   Color.fromARGB(255, 90, 4, 54),
          // ]),
          // borderRadius: BorderRadius.circular(30),
        ),
        child: TextField(
          cursorColor: Colors.black,
          controller: passwordChechController,
          obscureText: true,
          decoration: InputDecoration(
              hintText: "Password Again",
              hintStyle: const TextStyle(color: Colors.grey),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.black,
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent, width: 1),
                  borderRadius: BorderRadius.circular(30)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent, width: 1),
                  borderRadius: BorderRadius.circular(30)),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
        ),
      ),
    );
  }

  Padding passwordField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                  borderSide: BorderSide(color: Colors.transparent, width: 1),
                  borderRadius: BorderRadius.circular(30)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent, width: 1),
                  borderRadius: BorderRadius.circular(30)),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
        ),
      ),
    );
  }

  Padding emailField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                  borderSide: BorderSide(color: Colors.transparent, width: 1),
                  borderRadius: BorderRadius.circular(30)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent, width: 1),
                  borderRadius: BorderRadius.circular(30)),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
        ),
      ),
    );
  }
}


// body: ListView(children: [
//         Container(
//           width: w,
//           height: h * 0.15,
//           // decoration: const BoxDecoration(
//           //   image: DecorationImage(
//           //       image: AssetImage("assets/img/signup.png"), fit: BoxFit.cover),
//           // ),
//         ),
//         const Padding(
//           padding: EdgeInsets.only(left: 18.0),
//           child: Text(
//             'Sign Up',
//             style: TextStyle(
//                 color: Colors.black, fontSize: 56, fontWeight: FontWeight.bold),
//           ),
//         ),
//         const Padding(
//           padding: EdgeInsets.only(left: 18.0),
//           child: Text('Sign up your account'),
//         ),
//         Container(
//           margin: const EdgeInsets.only(left: 20, right: 20),
//           width: w,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const SizedBox(
//                 height: 50,
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(30),
//                     boxShadow: [
//                       BoxShadow(
//                           blurRadius: 10,
//                           offset: const Offset(1, 1),
//                           color: Colors.grey.withOpacity(0.2),
//                           spreadRadius: 7)
//                     ]),
//                 child: TextField(
//                   controller: emailController,
//                   decoration: InputDecoration(
//                       hintText: "Email",
//                       prefixIcon: const Icon(
//                         Icons.email,
//                         color: Colors.deepOrangeAccent,
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                           borderSide:
//                               const BorderSide(color: Colors.white, width: 1),
//                           borderRadius: BorderRadius.circular(30)),
//                       enabledBorder: OutlineInputBorder(
//                           borderSide:
//                               const BorderSide(color: Colors.white, width: 1),
//                           borderRadius: BorderRadius.circular(30)),
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30))),
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(30),
//                     boxShadow: [
//                       BoxShadow(
//                           blurRadius: 10,
//                           offset: const Offset(1, 1),
//                           color: Colors.grey.withOpacity(0.2),
//                           spreadRadius: 7)
//                     ]),
//                 child: TextField(
//                   controller: passwordController,
//                   obscureText: true,
//                   decoration: InputDecoration(
//                       hintText: "Password",
//                       prefixIcon: const Icon(
//                         Icons.password_outlined,
//                         color: Colors.deepOrangeAccent,
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                           borderSide:
//                               const BorderSide(color: Colors.white, width: 1),
//                           borderRadius: BorderRadius.circular(30)),
//                       enabledBorder: OutlineInputBorder(
//                           borderSide:
//                               const BorderSide(color: Colors.white, width: 1),
//                           borderRadius: BorderRadius.circular(30)),
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30))),
//                 ),
//               ),
//               const SizedBox(
//                 height: 70,
//               ),
//               // Row(
//               //   children: [
//               //     Expanded(child: Container()),
//               //     const Text('Forgot your password ?')
//               //   ],
//               // )
//             ],
//           ),
//         ),
//         GestureDetector(
//           onTap: () {
//             AuthController.instance.register(
//                 emailController.text.trim(), passwordController.text.trim());
//           },
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 35),
//             child: Container(
//               width: w * 0.5,
//               height: h * 0.08,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(30),
//                   color: Colors.purpleAccent
//                   // image: const DecorationImage(
//                   //     image: AssetImage("assets/img/loginbtn.png"),
//                   //     fit: BoxFit.cover),
//                   ),
//               child: const Center(
//                 child: Text(
//                   "Sign up",
//                   style: TextStyle(
//                       fontSize: 36,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         Center(
//           child: RichText(
//             text: TextSpan(
//                 text: "Already have an account ",
//                 recognizer: TapGestureRecognizer()..onTap = () => Get.back(),
//                 style: TextStyle(color: Colors.grey[500], fontSize: 20),
//                 children: [
//                   TextSpan(
//                       recognizer: TapGestureRecognizer()
//                         ..onTap = () => Get.to(() => LoginPage()),
//                       text: "Login",
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold))
//                 ]),
//           ),
//         ),
//         SizedBox(height: h * 0.08),
//       ]),