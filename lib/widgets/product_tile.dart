import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopbar/theme.dart';

class ProductTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/image_sepatu.png',
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Football',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: abuText,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'Predator 20.3 Firm Ground',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: semibold,
                    color: waranaPutih,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  '\$285,73',
                  style: GoogleFonts.poppins(
                    fontWeight: medium,
                    color: warnaBiru,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
