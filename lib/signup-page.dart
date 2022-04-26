import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopbar/theme.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: warnaHitam1,
      body: SafeArea(
        child: ListView(
          children: [
            title(),
            SizedBox(height: 50),
            name(),
            SizedBox(height: 20),
            username(),
          ],
        ),
      ),
    );
  }

  Widget title() {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sign Up',
            style: GoogleFonts.poppins(
              fontSize: 21,
              fontWeight: semibold,
              color: waranaPutih,
            ),
          ),
          SizedBox(height: 2),
          Text(
            'Register and Happy Shoping',
            style: GoogleFonts.poppins(
              color: abuText,
            ),
          ),
        ],
      ),
    );
  }

  Widget name() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Full Name',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: medium,
              color: waranaPutih,
            ),
          ),
          SizedBox(height: 12),
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: warnaHitam2,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  Image.asset(
                    'assets/icon_name.png',
                    width: 16,
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: TextFormField(
                      style: GoogleFonts.poppins(
                        color: waranaPutih,
                      ),
                      decoration: InputDecoration.collapsed(
                          hintText: 'Your Full Name',
                          hintStyle: GoogleFonts.poppins(
                            color: abuText,
                          )),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget username() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Username',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: medium,
              color: waranaPutih,
            ),
          ),
          SizedBox(height: 12),
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: warnaHitam2,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  Image.asset(
                    'assets/icon_username.png',
                    width: 16,
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: TextFormField(
                      style: GoogleFonts.poppins(
                        color: waranaPutih,
                      ),
                      decoration: InputDecoration.collapsed(
                          hintText: 'Your Username',
                          hintStyle: GoogleFonts.poppins(
                            color: abuText,
                          )),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
