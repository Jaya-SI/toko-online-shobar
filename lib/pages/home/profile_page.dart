import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopbar/theme.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    header() {
      return AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: warnaHitam1,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.all(30),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/image_profile.png',
                    width: 64,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hallo, Jaya',
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
                Image.asset(
                  'assets/button_exit.png',
                  width: 20,
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
      ],
    );
  }
}
