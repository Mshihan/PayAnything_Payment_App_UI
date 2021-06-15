import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payhere/Constrains/ClassTemplates.dart';
import 'package:payhere/Constrains/TemplateColors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payhere/Constrains/TemplateStyles.dart';
import 'package:intl/intl.dart';
import 'package:payhere/ContactUs/ContactUs.dart';
import 'package:payhere/RecentTransactions/RecentTransactions.dart';
import 'package:payhere/HomePage/HomePageDTH.dart';
import 'package:payhere/HomePage/HomePageLanding.dart';
import 'package:payhere/LoginPage/LoginOtpConfirmation.dart';
import 'package:payhere/LoginPage/LoginPage.dart';
import 'package:payhere/SetPasscode/SetPasscode.dart';
import 'package:payhere/Settings/Settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "PayAnything",
        debugShowCheckedModeBanner: false,
        home: HomePageLanding(),
        initialRoute: HomePageLanding.homePageLanding,
        routes: {
          SetPasscode.setPasscode: (context) => SetPasscode(),
          LoginPage.loginPage: (context) => LoginPage(),
          LoginOtpPage.otpConfirmation: (context) => LoginOtpPage(),
          HomePageLanding.homePageLanding: (context) => HomePageLanding(),
          HomePageDTH.dthPageLanding: (context) => HomePageDTH(),
          RecentTransactions.recentTransactions: (context) =>
              RecentTransactions(),
          Settings.settingsPage: (context) => Settings(),
          ContactUs.contactUsPage: (context) => ContactUs(),
        });
  }
}
