import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payhere/Constrains/TemplateColors.dart';

class ProviderDetails {
  ProviderDetails({
    required this.providerName,
    required this.imagePath,
    required this.route,
    required this.svgImage,
    required this.imageHeight,
    required this.imageWidth,
  });
  final String providerName;
  final String imagePath;
  final String route;
  final bool svgImage;
  final double imageHeight;
  final double imageWidth;
}

class ServiceProviderTitleComponent extends StatelessWidget {
  ServiceProviderTitleComponent({
    required this.width,
    required this.height,
    required this.imagePath,
    required this.imageHeight,
    required this.imageWidth,
    required this.title,
    required this.svgImage,
  });
  final String title;
  final double width;
  final double height;
  final double imageHeight;
  final double imageWidth;
  final String imagePath;
  final bool svgImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.00),
      ),
      margin: EdgeInsets.symmetric(horizontal: width * 0.08),
      padding: EdgeInsets.symmetric(vertical: height * 0.03),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: width * 0.08, right: width * 0.01),
            child: Text(
              'Service Provider - ' + title,
              textAlign: TextAlign.start,
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            width: width * 0.01,
          ),
          svgImage
              ? Container(
                  child: SvgPicture.asset(
                    imagePath,
                    color: bottomGradient,
                  ),
                  height: imageHeight,
                  width: imageHeight,
                )
              : Container(
                  height: imageHeight,
                  width: imageHeight,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          imagePath,
                        ),
                        fit: BoxFit.fitWidth),
                  ),
                ),
        ],
      ),
    );
  }
}
