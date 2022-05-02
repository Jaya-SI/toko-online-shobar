import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopbar/theme.dart';

class WhislistCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(top: 10, left: 12, bottom: 14, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: warnaHitam4,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/image_sepatu.png',
              width: 60,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Terrex Urban Low',
                  style: GoogleFonts.poppins(
                    fontWeight: semibold,
                    color: waranaPutih,
                  ),
                ),
                Text(
                  '\$143,98',
                  style: GoogleFonts.poppins(
                    color: warnaBiru,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/button_whislist_blue.png',
            width: 34,
          ),
        ],
      ),
    );
  }
}
