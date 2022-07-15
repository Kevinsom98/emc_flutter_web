import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoPalette extends StatelessWidget {
  final String title;
  final String text;
  final IconData icon;
  final double? width;
  InfoPalette({
    required this.text,
    required this.title,
    required this.icon,
    this.width,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(0.2),
      child: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Icon(
                icon,
                size: 22.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              title,
              style: GoogleFonts.nunito(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 18.0,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              width: width == null ? 200.0 : width,
              child: Text(
                text,
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w400,
                  color: Colors.white54,
                  fontSize: 14.0,
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              'Learn More....',
              style: GoogleFonts.nunito(
                color: Colors.white70,
                fontWeight: FontWeight.w800,
                fontSize: 14.0,
              ),
            ),
            Container(
              height: 1.5,
              width: 90.0,
              color: Colors.black87,
            ),
          ],
        ),
      ),
    );
  }
}
