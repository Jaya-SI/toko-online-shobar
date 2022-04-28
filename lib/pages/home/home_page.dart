import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopbar/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: warnaHitam1,
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            categories(),
          ],
        ),
      ),
    );
  }

  Widget header() {
    return Container(
      margin: EdgeInsets.all(30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello, Muhammad Jaya Saputra',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: semibold,
                    color: waranaPutih,
                  ),
                ),
                Text(
                  '@jaya.saptr',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: abuText,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/image_profile.png'),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget categories() {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 30),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: EdgeInsets.only(right: 16),
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: warnaUngu,
              ),
              child: Text(
                'All Shoes',
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: medium,
                  color: waranaPutih,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: EdgeInsets.only(right: 16),
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: abuText,
                ),
                color: warnaTransaparan,
              ),
              child: Text(
                'Running',
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: medium,
                  color: abuText,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: EdgeInsets.only(right: 16),
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: abuText,
                ),
                color: warnaTransaparan,
              ),
              child: Text(
                'Training',
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: medium,
                  color: abuText,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: EdgeInsets.only(right: 16),
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: abuText,
                ),
                color: warnaTransaparan,
              ),
              child: Text(
                'Basketball',
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: medium,
                  color: abuText,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: EdgeInsets.only(right: 16),
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: abuText,
                ),
                color: warnaTransaparan,
              ),
              child: Text(
                'Hiking',
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: medium,
                  color: abuText,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
