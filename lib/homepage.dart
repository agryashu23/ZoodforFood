import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoodforfood/provider.dart';
import 'package:provider/provider.dart';
import 'package:zoodforfood/utils/color_constant.dart';
import 'package:zoodforfood/utils/image_constant.dart';
import 'package:zoodforfood/utils/math_utils.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'explore.dart';
import 'loading.dart';
import 'otp.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController phoneController = TextEditingController();
  String verificationId = "";
  var countryCode ='';
  FirebaseAuth auth = FirebaseAuth.instance;
  GoogleSignInAccount? _user;
  GoogleSignInAccount get user => _user!;



  @override
  Widget build(BuildContext context) {
    return Consumer<FormModel>(builder: (context, cart, child)
    {
      var wSize = MediaQuery
          .of(context)
          .size
          .width;
      var hSize = MediaQuery
          .of(context)
          .size
          .height;
      return cart.loading ? Loading() :Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: ColorConstant.whiteA700,
            ),
            child: Padding(
              padding: EdgeInsets.only(top: hSize * 0.07
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: hSize * 0.02),
                    child: SvgPicture.asset(
                      ImageConstant.imgZoodforfoodl,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: hSize * 0.05, left: wSize * 0.1, right: wSize * 0.1
                    ),
                    child: Text(
                      "Welcome to the first ever Foodverse experience, Zoodie!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ColorConstant.deepOrange700,
                        fontSize:
                        wSize * 0.05,
                        fontFamily: 'Biryani',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.white,
                    elevation: 3,
                    margin: EdgeInsets.symmetric(
                        horizontal: wSize * 0.05, vertical: hSize * 0.05),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: wSize,
                          padding: EdgeInsets.symmetric(vertical: hSize * 0.04,
                              horizontal: wSize * 0.1),
                          child: Text(
                            "Login with Mobile Number:",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: ColorConstant.deepOrange700,
                              fontSize: getFontSize(
                                20,
                              ),
                              fontFamily: 'Biryani',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CountryCodePicker(
                              onChanged: (c) {
                                setState(() {
                                  countryCode = c.toString();
                                });
                              },
                              padding: EdgeInsets.only(left: wSize*0.01),
                              textStyle: TextStyle(fontSize: wSize*0.04,color: Colors.black),
                              initialSelection: '+91',
                              favorite: ['+91', 'US'],
                              onInit: (c) {
                                countryCode = c.toString();
                              },
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(right: wSize * 0.05),
                                decoration: BoxDecoration(
                                  color: ColorConstant.whiteA700,
                                  borderRadius: BorderRadius.circular(10.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: ColorConstant.black90040,
                                      spreadRadius: getHorizontalSize(
                                        2.00,
                                      ),
                                      blurRadius: getHorizontalSize(
                                        2.00,
                                      ),
                                    ),
                                  ],
                                ),
                                child: PhoneFieldHint(
                                  controller: phoneController,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(
                                        RegExp('[0-9]'))
                                  ],
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(
                                        left: wSize * 0.08),
                                    hintText: "Enter Your Phone Number",
                                    hintStyle: TextStyle(
                                      color: ColorConstant.black9007f,
                                      fontSize: wSize * 0.04,
                                      fontFamily: 'Biryani',
                                      fontWeight: FontWeight.w400,
                                    ),
                                    // counterText: '',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: wSize * 0.27,
                              top: hSize * 0.04,
                              bottom: hSize * 0.02),
                          padding: EdgeInsets.symmetric(
                              vertical: 2, horizontal: wSize * 0.08),
                          decoration: BoxDecoration(
                            color: ColorConstant.deepOrange700,
                            borderRadius: BorderRadius.circular(
                              13.00,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () async {
                              if (phoneController.text.length >= 10) {
                                if(phoneController.text.length > 10){
                                  phoneController.text = phoneController.text.substring(phoneController.text.length - 10);
                                }
                                cart.loader(true);
                                await FirebaseAuth.instance.verifyPhoneNumber(
                                  phoneNumber:
                                  '$countryCode${phoneController.text
                                      .trim()}',
                                  verificationCompleted:
                                      (PhoneAuthCredential credential) {
                                    cart.loader(false);

                                  },
                                  verificationFailed:
                                      (FirebaseAuthException e) {
                                    cart.loader(false);

                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(
                                        SnackBar(
                                            content: Text(
                                                'Enter Correct Mobile Number')));
                                  },
                                  codeSent: (String verificationId,
                                      int? resendToken) {
                                    cart.loader(false);
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            OTP(
                                                value: verificationId,
                                                control: phoneController
                                                    .text,
                                                countryCode:countryCode,

                                                ),
                                      ),
                                    );
                                  },
                                  codeAutoRetrievalTimeout:
                                      (String verificationId) {},
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text(
                                            'Please Enter Correct Mobile Number')));
                              }
                            },
                            child: Text(
                              "Get OTP",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: ColorConstant.whiteA700,
                                fontSize: wSize * 0.04,
                                fontFamily: 'Biryani',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: hSize * 0.015),
                    child: Text(
                      "(OR)",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          wSize * 0.05,
                        ),
                        fontFamily: 'Biryani',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: wSize * 0.1, vertical: 5),
                    child: const Divider(
                      thickness: 1,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                        vertical: hSize * 0.05, horizontal: wSize * 0.1),
                    padding: EdgeInsets.symmetric(
                        vertical: 5, horizontal: wSize * 0.015),
                    decoration: BoxDecoration(
                      color: ColorConstant.deepOrange700,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          30.00,
                        ),
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        cart.loader(true);
                        googleSign(cart);
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            ImageConstant.imgGroup266,
                            fit: BoxFit.fill,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: wSize * 0.08),
                            child: Text(
                              "Login with Google",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: ColorConstant.whiteA700,
                                fontSize: wSize * 0.05,
                                fontFamily: 'Lexend',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
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
    });

  }
  Future googleSign(cart) async{
    final googleSignIn = GoogleSignIn();
    final googleUser = await googleSignIn.signIn();
    if(googleUser == null) return;
    _user = googleUser;
    final  googleAuth = await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    UserCredential result = await FirebaseAuth.instance.signInWithCredential(credential);
    User? user = result.user;
    cart.loader(false);
    if (result != null) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Explore()));
    }
  }
}