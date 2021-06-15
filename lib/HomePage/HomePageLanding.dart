import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payhere/Constrains/ClassTemplates.dart';
import 'package:payhere/Constrains/TemplateColors.dart';
import 'package:flutter/material.dart';
import 'package:payhere/ContactUs/ContactUs.dart';
import 'package:payhere/HomePage/HomePageDTH.dart';
import 'package:payhere/LoginPage/LoginPage.dart';
import 'package:payhere/PaymentScreens/PaymentScreenMobileReacharge.dart';
import 'package:payhere/RecentTransactions/RecentTransactions.dart';
import 'package:payhere/Settings/Settings.dart';

class HomePageLanding extends StatefulWidget {
  static const homePageLanding = '/homePayHere';
  const HomePageLanding({Key? key}) : super(key: key);

  @override
  _HomePageLandingState createState() => _HomePageLandingState();
}

class _HomePageLandingState extends State<HomePageLanding> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  void _closeDrawer() {
    Navigator.of(context).pop();
  }

  List<ProviderDetails> providers = [
    ProviderDetails(
      providerName: 'DIALOG',
      imagePath: 'assets/ServiceProviders/dialog.png',
      route: HomePageDTH.dthPageLanding,
      svgImage: false,
      imageHeight: 40,
      imageWidth: 60,
    ),
    ProviderDetails(
      providerName: 'MOBITEL',
      imagePath: 'assets/ServiceProviders/mobitel.png',
      route: '',
      svgImage: false,
      imageHeight: 38,
      imageWidth: 60,
    ),
    ProviderDetails(
      providerName: 'HUTCH',
      imagePath: 'assets/ServiceProviders/hutch.png',
      route: '',
      svgImage: false,
      imageHeight: 40,
      imageWidth: 60,
    ),
    ProviderDetails(
      providerName: 'AIRTEL',
      imagePath: 'assets/ServiceProviders/airtel.png',
      route: '',
      svgImage: false,
      imageHeight: 40,
      imageWidth: 60,
    ),
    ProviderDetails(
      providerName: 'DTH TV RECHARGE',
      imagePath: 'assets/ServiceProviders/dishTVRecharge.svg',
      route: '',
      svgImage: true,
      imageHeight: 35,
      imageWidth: 60,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: Container(
          width: width,
          padding: EdgeInsets.only(top: height * 0.1, left: width * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  if (ModalRoute.of(context)?.settings.name ==
                      HomePageLanding.homePageLanding) {
                    return;
                  } else {
                    _closeDrawer();
                    Navigator.pushNamed(
                        context, HomePageLanding.homePageLanding);
                  }
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: Row(
                    children: [
                      Icon(
                        Icons.home_outlined,
                        color: ModalRoute.of(context)?.settings.name ==
                                HomePageLanding.homePageLanding
                            ? bottomGradient
                            : topGradient,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        child: Text(
                          "HOME",
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: ModalRoute.of(context)?.settings.name ==
                                      HomePageLanding.homePageLanding
                                  ? bottomGradient
                                  : topGradient),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (ModalRoute.of(context)?.settings.name ==
                      RecentTransactions.recentTransactions) {
                    return;
                  } else {
                    _closeDrawer();
                    Navigator.pushNamed(
                        context, RecentTransactions.recentTransactions);
                  }
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: Row(
                    children: [
                      Icon(
                        Icons.attach_money_outlined,
                        color: ModalRoute.of(context)?.settings.name ==
                                RecentTransactions.recentTransactions
                            ? bottomGradient
                            : topGradient,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        child: Text(
                          "RECENT TRANSACTIONS",
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: ModalRoute.of(context)?.settings.name ==
                                      RecentTransactions.recentTransactions
                                  ? bottomGradient
                                  : topGradient),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (ModalRoute.of(context)?.settings.name ==
                      Settings.settingsPage) {
                    return;
                  } else {
                    _closeDrawer();
                    Navigator.pushNamed(context, Settings.settingsPage);
                  }
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: Row(
                    children: [
                      Icon(
                        Icons.settings_outlined,
                        color: ModalRoute.of(context)?.settings.name ==
                                Settings.settingsPage
                            ? bottomGradient
                            : topGradient,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        child: Text(
                          "SETTINGS",
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: ModalRoute.of(context)?.settings.name ==
                                      Settings.settingsPage
                                  ? bottomGradient
                                  : topGradient),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (ModalRoute.of(context)?.settings.name ==
                      ContactUs.contactUsPage) {
                    return;
                  } else {
                    _closeDrawer();
                    Navigator.pushNamed(context, ContactUs.contactUsPage);
                  }
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person_outline,
                        color: ModalRoute.of(context)?.settings.name ==
                                ContactUs.contactUsPage
                            ? bottomGradient
                            : topGradient,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        child: Text(
                          "CONTACT US",
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: ModalRoute.of(context)?.settings.name ==
                                      ContactUs.contactUsPage
                                  ? bottomGradient
                                  : topGradient),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  _closeDrawer();
                  Navigator.pushNamed(context, LoginPage.loginPage);
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout_outlined,
                        color: topGradient,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        child: Text(
                          "LOGOUT",
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: topGradient),
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
                    Container(
                      width: width,
                      child: Text(
                        'HOME',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                    SizedBox(height: height * 0.03),
                    Container(
                      margin: EdgeInsets.only(
                          bottom: height * 0.02, left: width * 0.05),
                      child: Text(
                        "Recently used Numbers",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ),
                    RecentNumberWidget(
                      width: width,
                      height: height,
                    ),
                    RecentNumberWidget(
                      width: width,
                      height: height,
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
                              onTap: () => {
                                if (providers[count].providerName ==
                                    'DTH TV RECHARGE')
                                  {
                                    Navigator.pushNamed(
                                        context, HomePageDTH.dthPageLanding),
                                  }
                                else
                                  {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              PaymentScreenMobileRecharge(
                                            imagePath:
                                                providers[count].imagePath,
                                            mobileNo: '',
                                            title:
                                                providers[count].providerName,
                                            svgImage: providers[count].svgImage,
                                            imageHeight:
                                                providers[count].imageHeight,
                                            imageWidth:
                                                providers[count].imageHeight,
                                          ),
                                        ))
                                  }
                              },
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
                                            width: providers[count].imageHeight,
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
              onPressed: () {
                _openDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RecentNumberWidget extends StatefulWidget {
  RecentNumberWidget({required this.width, required this.height});
  final double width;
  final double height;

  @override
  _RecentNumberWidgetState createState() => _RecentNumberWidgetState();
}

class _RecentNumberWidgetState extends State<RecentNumberWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Text('+94 33 333 3333'),
            padding: EdgeInsets.symmetric(
              vertical: 15.00,
              horizontal: widget.width * 0.05,
            ),
          ),
          Container(
            color: Colors.red,
            child: ClipRRect(
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(20.00)),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ),
          ),
        ],
      ),
      margin:
          EdgeInsets.symmetric(horizontal: widget.width * 0.05, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        // borderRadius: BorderRadius.circular(20.00),
      ),
    );
  }
}
