import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  static const contactUsPage = '/contactUs';

  const ContactUs({Key? key}) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('ContactUs'),
      ),
    );
  }
}
