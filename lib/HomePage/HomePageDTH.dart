import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payhere/Constrains/TemplateColors.dart';
import 'package:payhere/Constrains/ClassTemplates.dart';
import 'package:payhere/PaymentScreens/PaymentScreenDTH.dart';

class HomePageDTH extends StatefulWidget {
  static const dthPageLanding = '/dthHomePayHere';

  const HomePageDTH({Key? key}) : super(key: key);

  @override
  _HomePageDTHState createState() => _HomePageDTHState();
}

class _HomePageDTHState extends State<HomePageDTH> {
  List<ProviderDetails> providers = [
    ProviderDetails(
      providerName: 'DISH TV',
      imagePath: 'assets/DTHTvRechargeProviders/dishTv.png',
      route: '',
      svgImage: false,
      imageHeight: 40,
      imageWidth: 60,
    ),
    ProviderDetails(
      providerName: 'AIRTEL TV',
      imagePath: 'assets/DTHTvRechargeProviders/airtelDigitalTv.png',
      route: '',
      svgImage: false,
      imageHeight: 40,
      imageWidth: 60,
    ),
    ProviderDetails(
      providerName: 'SUN DIRECT',
      imagePath: 'assets/DTHTvRechargeProviders/sunDirect.png',
      route: '',
      svgImage: false,
      imageHeight: 40,
      imageWidth: 60,
    ),
    ProviderDetails(
      providerName: 'VIDEO CON',
      imagePath: 'assets/DTHTvRechargeProviders/videoCon.jpeg',
      route: '',
      svgImage: false,
      imageHeight: 40,
      imageWidth: 60,
    ),
  ];

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
                padding: EdgeInsets.only(
                  top: height * 0.1,
                ),
                width: width,
                height: height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(),
                    Container(
                      width: width,
                      child: Text(
                        'TELEVISION RECHARGE',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: height * 0.04,
                          bottom: height * 0.02,
                          left: width * 0.05),
                      child: Text(
                        "Select provider",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: ListView.builder(
                          padding: EdgeInsets.only(top: 10),
                          itemCount: providers.length,
                          itemBuilder: (context, count) {
                            return GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PaymetScreenDTH(
                                            imagePath:
                                                providers[count].imagePath,
                                            mobileNo: '',
                                            title:
                                                providers[count].providerName,
                                            svgImage: providers[count].svgImage,
                                            imageHeight:
                                                providers[count].imageHeight,
                                            imageWidth:
                                                providers[count].imageWidth,
                                          ))),
                              child: Container(
                                child: Row(
                                  children: [
                                    providers[count].svgImage
                                        ? Container(
                                            child: SvgPicture.asset(
                                              providers[count].imagePath,
                                              color: bottomGradient,
                                            ),
                                            height:
                                                providers[count].imageHeight,
                                            width: providers[count].imageWidth,
                                          )
                                        : Container(
                                            height:
                                                providers[count].imageHeight,
                                            width: providers[count].imageHeight,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    providers[count].imagePath,
                                                  ),
                                                  fit: BoxFit.fitWidth),
                                            ),
                                          ),
                                    SizedBox(
                                      width: width * 0.1,
                                    ),
                                    Container(
                                      child: Text(
                                        providers[count].providerName,
                                        style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54),
                                      ),
                                    )
                                  ],
                                ),
                                margin: EdgeInsets.only(
                                    top: 0,
                                    left: width * 0.05,
                                    right: width * 0.05,
                                    bottom: 10.00),
                                padding: EdgeInsets.only(
                                    top: 10.00,
                                    bottom: 10.00,
                                    left: width * 0.05,
                                    right: width * 0.05),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.00),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: width,
                      margin: EdgeInsets.only(bottom: height * 0.01),
                      child: Text(
                        "Copyright by PayAnything\n2020",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                            color: Colors.white, fontWeight: FontWeight.w700),
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
