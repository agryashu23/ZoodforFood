import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

import 'package:sms_autofill/sms_autofill.dart';
import 'package:timer_button/timer_button.dart';
import 'package:zoodforfood/provider.dart';
import 'package:zoodforfood/utils/color_constant.dart';
import 'package:zoodforfood/utils/image_constant.dart';
import 'package:zoodforfood/utils/math_utils.dart';

import 'explore.dart';
import 'loading.dart';
class OTP extends StatefulWidget {


  const OTP(
      {Key? key,
        required this.value,
        required this.control,
        required this.countryCode
      }) : super(key: key);

  final String value;
  final String control;
  final String countryCode;

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  TextEditingController otpController =  TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;
  bool loading = true;
  String _verificationId = "";
  int? _resendToken;

  Future<bool> sendOTP() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: widget.control,
      verificationCompleted: (PhoneAuthCredential credential) {

      },
      verificationFailed: (FirebaseAuthException e) {

      },
      codeSent: (String verificationId, int? resendToken) async {
        _verificationId = verificationId;
        _resendToken = resendToken;
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
            builder: (context) =>
            OTP(
              value: verificationId,
              control: widget.control,
              countryCode:widget.countryCode,

            ),
        ),
        );
      },
      forceResendingToken: _resendToken,
      codeAutoRetrievalTimeout: (String verificationId) {
        verificationId = _verificationId;
      },
    );
    return true;
  }


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
                              horizontal: wSize * 0.05),
                          child: Text.rich(
                              TextSpan(
                                  text: 'Enter OTP sent to  ',
                                  style: TextStyle(
                                    color: ColorConstant.deepOrange700,
                                    fontSize: wSize*0.04,
                                    fontFamily: 'Biryani',
                                    fontWeight: FontWeight.w700,
                                  ),
                                  children: <InlineSpan>[
                                    TextSpan(
                                      recognizer: TapGestureRecognizer()..onTap = () {

                                      },
                                      text: '${widget.countryCode}${widget.control}',
                                      style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: wSize*0.04,
                                        fontFamily: 'Biryani',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )
                                  ]
                              )
                          ),
                    ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: wSize * 0.03),
                          child: PinFieldAutoFill(
                            cursor: Cursor(color: Colors.blue, enabled: true, width: 1),
                            autoFocus: true,
                            decoration: BoxLooseDecoration(
                                radius: Radius.circular(10),
                                gapSpace: wSize*0.02,
                                textStyle: TextStyle(fontSize: 20, color: Colors.black),
                                strokeColorBuilder: FixedColorBuilder(Colors.black.withOpacity(0.6))
                            ),
                            keyboardType: TextInputType.number,
                            currentCode: '',
                            codeLength: 6,
                            // autoFocus: true,
                            controller: otpController,
                            // },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: wSize * 0.25,
                              top: hSize * 0.04,
                              bottom: hSize * 0.02),
                          padding: EdgeInsets.symmetric(
                              vertical: 3, horizontal: wSize * 0.08),
                          decoration: BoxDecoration(
                            color: ColorConstant.deepOrange700,
                            borderRadius: BorderRadius.circular(
                              13.00,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () async {
                              if(otpController.text.length == 6){

                                AuthCredential phoneAuthCredential =
                                PhoneAuthProvider.credential(
                                    verificationId: widget.value,
                                    smsCode: otpController.text.trim());
                                signInWithPhoneAuthCred(phoneAuthCredential,cart);
                              }
                              else{
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(content: Text('Enter Correct OTP')));
                              }

                            },
                            child: Text(
                              "Let's Go",
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
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: wSize*0.1,vertical: hSize*0.02),
                          child: Row(
                            children: [
                              Text('Didnt Receive Code?',
                                style: TextStyle(
                                  color: ColorConstant.deepOrange700,
                                  fontSize: wSize*0.04,
                                  fontFamily: 'Biryani',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TimerButton(
                                label: "Resend",
                                timeOutInSeconds: 30,
                                onPressed: () {
                                  sendOTP();
                                },
                                buttonType: ButtonType.TextButton,
                                disabledColor: Colors.white,
                                color: Colors.white,
                                disabledTextStyle: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: wSize*0.04,
                                  fontFamily: 'Biryani',
                                  fontWeight: FontWeight.w700,
                                ),
                                activeTextStyle:TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: wSize*0.04,
                                  fontFamily: 'Biryani',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
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
  void signInWithPhoneAuthCred(AuthCredential phoneAuthCredential,cart) async {
    try {
      setState(() {
        cart.loader(true);

      });
      final authCred = await _auth.signInWithCredential(phoneAuthCredential);

      if (authCred.user != null) {
        setState(() {
          cart.loader(false);
        });
        cart.loading?Loading():AwesomeDialog(
          context: context,
          animType: AnimType.LEFTSLIDE,
          headerAnimationLoop: false,
          dialogType: DialogType.SUCCES,
          title: 'Verification Success',
        )
          .show();
        await Future.delayed(const Duration(milliseconds: 3000));

        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Explore()));
      }
    } on FirebaseAuthException catch (e) {
      setState(() {
        cart.loader(false);

      });
      print(e.message);
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Enter Correct OTP')));
    }
  }
  }