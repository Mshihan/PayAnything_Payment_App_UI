import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:payhere/Constrains/ClassTemplates.dart';
import 'package:payhere/Constrains/TemplateColors.dart';
import 'package:google_fonts/google_fonts.dart';

// child: PaymetScreenDTH(
//   imagePath: 'assets/DTHTvRechargeProviders/sunDirect.png',
//   mobileNo: '+94717022038',
//   title: 'SUN DIRECT',
//   svgImage: false,
//   imageHeight: 38,
//   imageWidth: 60,
// ),

class PaymetScreenDTH extends StatefulWidget {
  static const PaymentScreenDTH = '/paymentScreenDthPage';
  PaymetScreenDTH({
    required this.imagePath,
    required this.mobileNo,
    required this.title,
    required this.svgImage,
    required this.imageHeight,
    required this.imageWidth,
  });

  final String imagePath;
  final String mobileNo;
  final String title;
  final bool svgImage;
  final double imageHeight;
  final double imageWidth;

  @override
  _PaymetScreenDTHState createState() => _PaymetScreenDTHState();
}

class _PaymetScreenDTHState extends State<PaymetScreenDTH> {
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
                      height: height * 0.1,
                    ),
                    Container(
                      width: width - (0.32 * width),
                      margin: EdgeInsets.only(bottom: height * 0.01),
                      alignment: Alignment.center,
                      child: Text(
                        'PROCEED',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    ServiceProviderTitleComponent(
                      width: width,
                      height: height,
                      imageHeight: widget.imageHeight,
                      imageWidth: widget.imageWidth,
                      imagePath: widget.imagePath,
                      svgImage: widget.svgImage,
                      title: widget.title,
                    ),
                    SizedBox(height: height * 0.03),

                    ///Amount Widget
                    ///ToDo Add Controllers to the text feild and implement delete function
                    Container(
                      width: width,
                      margin: EdgeInsets.symmetric(horizontal: width * 0.08),
                      child: Text(
                        'Account No / DTH No',
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: width * 0.08),
                      padding: EdgeInsets.only(
                          left: width * 0.05, bottom: 6.00, top: 6.00),
                      width: width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.red)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextField(
                              keyboardType: TextInputType.number,
                              cursorColor: Colors.black54,
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Container(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red,
                                size: 20,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.03),

                    ///Amount Widget
                    ///ToDo Add Controllers to the text feild and implement delete function
                    Container(
                      width: width,
                      margin: EdgeInsets.symmetric(horizontal: width * 0.08),
                      child: Text(
                        'Amount (INR)',
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: width * 0.08),
                      padding: EdgeInsets.only(
                          left: width * 0.05, top: 6.00, bottom: 6.00),
                      width: width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.red)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextField(
                              keyboardType: TextInputType.number,
                              cursorColor: Colors.black54,
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Container(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    ///Fee Amount
                    ///ToDo Change Free Dynamically
                    SizedBox(height: height * 0.04),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: width * 0.08),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              'INR Price',
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              "Rs. " + '3.30',
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    ///Total Amount
                    ///ToDo Change Total Amount Dynamically
                    SizedBox(height: height * 0.04),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: width * 0.08),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              'Total',
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              "Rs. " + '110.00',
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Spacer(),

                    GestureDetector(
                      onTap: () {
                        showToast(
                          "Button Selected",
                          context: context,
                          animation: StyledToastAnimation.fade,
                          reverseAnimation: StyledToastAnimation.fade,
                          animDuration: Duration(milliseconds: 200),
                          duration: Duration(milliseconds: 1400),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        height: height * 0.07,
                        margin: EdgeInsets.only(
                            right: width * 0.08,
                            left: width * 0.08,
                            bottom: height * 0.025),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.00),
                          color: Colors.black,
                        ),
                        child: Center(
                          child: Text(
                            'Proceed',
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
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
