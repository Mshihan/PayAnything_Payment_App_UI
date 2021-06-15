import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginTopComponent extends StatelessWidget {
  LoginTopComponent(
      {required this.height,
      required this.width,
      required this.backButton,
      required this.backFunction});
  final double height;
  final double width;
  final bool backButton;
  final Function backFunction;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: height * 0.07,
          ),
          // backButton
          //     ? Container(
          //         alignment: Alignment.centerLeft,
          //         margin: EdgeInsets.only(left: width * 0.05),
          //         child: IconButton(
          //           onPressed: () {
          //             //ToDo add the function passed by the parent component
          //           },
          //           icon: Icon(
          //             Icons.arrow_back_rounded,
          //             color: Colors.white,
          //           ),
          //         ),
          //       )
          //     : Container(),
          Container(
            margin: EdgeInsets.only(top: height * 0.1),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                      AssetImage('assets/PayAnythingLogos/payAnythingLogo.png'),
                ),
              ),
            ),
          ),
          Container(
            child: Text(
              'PayAnything',
              style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Container(
            child: Text('Payment Simplified',
                style: GoogleFonts.roboto(
                    color: Colors.white.withOpacity(0.7),
                    fontWeight: FontWeight.bold,
                    fontSize: 18)),
          )
        ],
      ),
    );
  }
}
