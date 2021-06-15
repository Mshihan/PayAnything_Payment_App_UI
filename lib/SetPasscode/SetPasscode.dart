import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:payhere/HomePage/HomePageLanding.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:payhere/Constrains/TemplateColors.dart';

class SetPasscode extends StatefulWidget {
  static const setPasscode = '/setPasscode';
  const SetPasscode({Key? key}) : super(key: key);

  @override
  _SetPasscodeState createState() => _SetPasscodeState();
}

class _SetPasscodeState extends State<SetPasscode> {
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.15,
                    ),
                    Container(
                      child: Text(
                        "Set Passcode",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Container(
                      child: Text(
                        "Set a passcode to proceed every \ntransaction",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: width * 0.1),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.00),
                        color: Colors.white,
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.1, vertical: height * 0.03),
                        child: PinCodeTextField(
                          pinTheme: PinTheme(
                            activeColor: Colors.grey,
                            inactiveColor: Colors.grey,
                            selectedColor: Colors.black,
                          ),
                          keyboardType: TextInputType.number,
                          onChanged: (string) {},
                          appContext: context,
                          length: 4,
                          cursorColor: Colors.black,
                          obscureText: true,
                          animationType: AnimationType.fade,
                          animationDuration: Duration(milliseconds: 300),
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, HomePageLanding.homePageLanding);
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
                            'Submit',
                            style: GoogleFonts.roboto(
                                color: Colors.white, fontSize: 18),
                          ),
                        ),
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
