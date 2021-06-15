import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payhere/LoginPage/LoginOtpConfirmation.dart';
import 'package:payhere/LoginPage/LoginPageComponents.dart';
import 'package:payhere/Constrains/TemplateColors.dart';

class LoginPage extends StatefulWidget {
  static const loginPage = '/loginPage';

  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            width: width,
            height: height,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LoginTopComponent(
                  height: height,
                  width: width,
                  backButton: false,
                  backFunction: () {
                    Navigator.pop(context);
                  },
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
                          'Welcome',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Container(
                        child: Text(
                          'Enter your phone number\n to proceed!',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: width * 0.15,
                            height: height * 0.04,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/PayAnythingLogos/srilankaLogo.png'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Container(
                            child: Text(
                              '+94',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.06,
                          ),
                          Container(
                            width: width * 0.5,
                            height: 60,
                            child: TextField(
                              decoration: new InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.00),
                                  borderSide: BorderSide(
                                    color: topGradient,
                                    width: 2.0,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.00),
                                  borderSide: BorderSide(
                                    color: topGradient,
                                    width: 1.0,
                                  ),
                                ),
                                hintText: 'Your phone number',
                                hintStyle: GoogleFonts.roboto(fontSize: 14),
                              ),
                              keyboardType: TextInputType.phone,
                              style: GoogleFonts.roboto(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, LoginOtpPage.otpConfirmation);
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
    );
  }
}
