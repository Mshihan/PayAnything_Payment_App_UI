import 'package:flutter/material.dart';
import 'package:payhere/Constrains/ClassTemplates.dart';
import 'package:payhere/Constrains/TemplateColors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payhere/Constrains/TemplateStyles.dart';
import 'package:intl/intl.dart';
import 'package:payhere/ContactUs/ContactUs.dart';
import 'package:payhere/HomePage/HomePageLanding.dart';
import 'package:payhere/LoginPage/LoginPage.dart';
import 'package:payhere/Settings/Settings.dart';

class RecentTransactions extends StatefulWidget {
  static const recentTransactions = '/recentTransactions';
  const RecentTransactions({Key? key}) : super(key: key);

  @override
  _RecentTransactionsState createState() => _RecentTransactionsState();
}

class _RecentTransactionsState extends State<RecentTransactions> {
  String formattedDate =
      DateFormat('yyyy-MM-dd kk:mmaa').format(DateTime.now());

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  void _closeDrawer() {
    Navigator.of(context).pop();
  }

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
                        'RECENT TRANSACTIONS',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Expanded(
                      child: Container(
                        width: width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.00)),
                        margin: EdgeInsets.symmetric(
                            horizontal: width * 0.02, vertical: height * 0.01),
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.03, vertical: height * 0.02),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          physics: BouncingScrollPhysics(),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            child: DataTable(
                              showBottomBorder: true,
                              dataTextStyle: KDataStyle,
                              headingTextStyle: KHeadingStyle,
                              sortAscending: true,
                              sortColumnIndex: 0,
                              columns: [
                                DataColumn(
                                  label: Text(
                                    'Number',
                                  ),
                                ),
                                DataColumn(
                                  label: Text(
                                    'Amount',
                                  ),
                                ),
                                DataColumn(
                                  label: Text(
                                    'Date',
                                  ),
                                ),
                              ],
                              rows: [
                                DataRow(
                                    cells: <DataCell>[
                                      DataCell(Text(
                                        '0717022038',
                                      )),
                                      DataCell(Text(
                                        '100.00',
                                      )),
                                      DataCell(Text(
                                        formattedDate,
                                      )),
                                    ],
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.greenAccent)),
                                DataRow(
                                  cells: [
                                    DataCell(Text(
                                      '0717022038',
                                    )),
                                    DataCell(Text(
                                      '100.00',
                                    )),
                                    DataCell(Text(
                                      formattedDate,
                                    )),
                                  ],
                                ),
                                DataRow(
                                    cells: <DataCell>[
                                      DataCell(Text(
                                        '0717022038',
                                      )),
                                      DataCell(Text(
                                        '100.00',
                                      )),
                                      DataCell(Text(
                                        formattedDate,
                                      )),
                                    ],
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.greenAccent)),
                                DataRow(
                                  cells: [
                                    DataCell(Text(
                                      '0717022038',
                                    )),
                                    DataCell(Text(
                                      '100.00',
                                    )),
                                    DataCell(Text(
                                      formattedDate,
                                    )),
                                  ],
                                ),
                                DataRow(
                                    cells: <DataCell>[
                                      DataCell(Text(
                                        '0717022038',
                                      )),
                                      DataCell(Text(
                                        '100.00',
                                      )),
                                      DataCell(Text(
                                        formattedDate,
                                      )),
                                    ],
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.greenAccent)),
                                DataRow(
                                  cells: [
                                    DataCell(
                                      Text(
                                        '0717022038',
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        '100.00',
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        formattedDate,
                                      ),
                                    ),
                                  ],
                                ),
                                DataRow(
                                  cells: <DataCell>[
                                    DataCell(
                                      Text(
                                        '0717022038',
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        '100.00',
                                      ),
                                    ),
                                    DataCell(Text(
                                      formattedDate,
                                    )),
                                  ],
                                  color: KRowColor,
                                ),
                                DataRow(
                                  cells: [
                                    DataCell(Text(
                                      '0717022038',
                                    )),
                                    DataCell(Text(
                                      '100.00',
                                    )),
                                    DataCell(Text(
                                      formattedDate,
                                    )),
                                  ],
                                ),
                                DataRow(
                                    cells: <DataCell>[
                                      DataCell(Text(
                                        '0717022038',
                                      )),
                                      DataCell(Text(
                                        '100.00',
                                      )),
                                      DataCell(Text(
                                        formattedDate,
                                      )),
                                    ],
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.greenAccent)),
                                DataRow(
                                  cells: [
                                    DataCell(Text(
                                      '0717022038',
                                    )),
                                    DataCell(Text(
                                      '100.00',
                                    )),
                                    DataCell(Text(
                                      formattedDate,
                                    )),
                                  ],
                                ),
                              ],
                            ),
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
              onPressed: () {
                //ToDo if the menu or the back button
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
