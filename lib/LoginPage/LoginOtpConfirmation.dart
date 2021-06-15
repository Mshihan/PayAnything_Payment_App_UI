import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payhere/Constrains/TemplateColors.dart';
import 'package:payhere/LoginPage/LoginPageComponents.dart';
import 'package:payhere/SetPasscode/SetPasscode.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'dart:async';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class LoginOtpPage extends StatefulWidget {
  static const otpConfirmation = '/otpConfirmation';
  const LoginOtpPage({Key? key}) : super(key: key);

  @override
  _LoginOtpPageState createState() => _LoginOtpPageState();
}

class _LoginOtpPageState extends State<LoginOtpPage> {
  String enteredTelephoneNumber = '+94717022038';

  late Timer _timer;
  int _start = 25;
  String countdownTime = '';

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            _timer.cancel();
          });
        } else {
          setState(() {
            _start--;
            if (_start < 10) {
              countdownTime = _start.toString().padLeft(2, '0');
            } else {
              countdownTime = _start.toString();
            }
          });
        }
      },
    );
  }

  String pinCode = '';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  topGradient,
                  bottomGradient,
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                width: width,
                height: height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LoginTopComponent(
                      height: height,
                      width: width,
                      backButton: true,
                      backFunction: () {},
                    ),
                    Container(
                      width: width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.00),
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.02, vertical: height * 0.015),
                      margin: EdgeInsets.symmetric(
                          vertical: height * 0.04, horizontal: width * 0.05),
                      child: Column(
                        children: [
                          SizedBox(height: height * 0.01),
                          Container(
                            child: Text(
                              'One-time password',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.015,
                          ),
                          Container(
                            child: Text(
                              'Enter the 4 digit code sent to\n your mobile number',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Container(
                            child: Text(
                              enteredTelephoneNumber,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: topGradient),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Container(
                            width: width * 0.6,
                            child: PinCodeTextField(
                              pinTheme: PinTheme(
                                activeColor: Colors.grey,
                                inactiveColor: Colors.grey,
                                selectedColor: Colors.black,
                              ),
                              keyboardType: TextInputType.number,
                              onChanged: (pin) {
                                pinCode = pin;
                              },
                              appContext: context,
                              length: 4,
                              cursorColor: Colors.black,
                              obscureText: false,
                              animationType: AnimationType.fade,
                              animationDuration: Duration(milliseconds: 300),
                              backgroundColor: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Container(
                            child: Text(
                              'You can request a new code in \n 0.$countdownTime',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          GestureDetector(
                            onTap: () {
                              if (pinCode == '1234') {
                                Navigator.pushNamed(
                                    context, SetPasscode.setPasscode);
                              } else {
                                showToast(
                                  "Invalid OTP",
                                  context: context,
                                  animation: StyledToastAnimation.fade,
                                  reverseAnimation: StyledToastAnimation.fade,
                                  animDuration: Duration(milliseconds: 200),
                                  duration: Duration(milliseconds: 1400),
                                );
                              }
                            },
                            child: Container(
                              width: double.infinity,
                              height: height * 0.07,
                              margin: EdgeInsets.only(
                                  right: width * 0.03,
                                  left: width * 0.03,
                                  bottom: height * 0.025),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.00),
                                color: Colors.black,
                              ),
                              child: Center(
                                child: Text(
                                  'Next',
                                  style: GoogleFonts.roboto(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: height * 0.085,
            left: width * 0.02,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.keyboard_backspace_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
