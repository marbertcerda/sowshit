import 'package:flutter/material.dart';

class HeadContainer extends StatelessWidget {
  const HeadContainer({
    Key? key,
    this.name,
    this.email,
    this.postTitle,
    this.location,
    this.nameFontSize,
    this.emailFontSize,
    this.postTitleFontSize,
    this.locationFontSize,
    this.text1,
    this.text2,
    this.text3,
    this.text1FontSize,
    this.text2FontSize,
    this.text3FontSize,
    this.showCircleAvatar = false,
    this.borderRadius = BorderRadius.zero,
    this.textPaddingLeft = 0.0, // Added textPaddingLeft parameter
  }) : super(key: key);

  final String? name;
  final String? email;
  final String? postTitle;
  final String? location;
  final double? nameFontSize;
  final double? emailFontSize;
  final double? postTitleFontSize;
  final double? locationFontSize;
  final String? text1;
  final String? text2;
  final String? text3;
  final double? text1FontSize;
  final double? text2FontSize;
  final double? text3FontSize;
  final bool showCircleAvatar;
  final BorderRadius borderRadius;
  final double textPaddingLeft; // Added textPaddingLeft

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue[800],
        borderRadius: borderRadius,
      ),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (text1 != null)
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                text1!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: text1FontSize ?? 28,
                ),
              ),
            ),
          if (text2 != null) SizedBox(height: 50),
          if (text2 != null)
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                text2!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: text2FontSize ?? 52,
                ),
              ),
            ),
          if (text3 != null)
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                text3!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: text3FontSize ?? 16,
                ),
              ),
            ),
          if (showCircleAvatar)
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 90,
                    width: 90,
                    child: CircleAvatar(),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (name != null)
                        Text(
                          name!,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: nameFontSize ?? 24,
                          ),
                        ),
                      if (email != null)
                        Text(
                          email!,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: emailFontSize ?? 16,
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          if (postTitle != null) SizedBox(height: 50),
          if (postTitle != null)
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                postTitle!,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: postTitleFontSize ?? 48,
                ),
              ),
            ),
          if (location != null)
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                location!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: locationFontSize ?? 16,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
