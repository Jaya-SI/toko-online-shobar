import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopbar/theme.dart';

class SigInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: warnaHitam1,
        body: SafeArea(
          child: ListView(
            children: [
              title(),
              SizedBox(height: 70),
              inputEmail(),
              SizedBox(height: 20),
              inputPass(),
            ],
          ),
        ));
  }

  Widget title() {
    return Container(
      margin: EdgeInsets.only(left: 30, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login',
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: semibold,
              color: waranaPutih,
            ),
          ),
          SizedBox(height: 2),
          Text(
            'Sign In to Countinue',
            style: GoogleFonts.poppins(
              color: abuText,
            ),
          ),
        ],
      ),
    );
  }

  Widget inputEmail() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email Address',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: medium,
              color: waranaPutih,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
              height: 50,
              decoration: BoxDecoration(
                color: warnaHitam2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 18,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_email.png',
                      width: 17,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: medium,
                          color: waranaPutih,
                        ),
                        decoration: InputDecoration.collapsed(
                            hintText: 'Input Your Email Address',
                            hintStyle: GoogleFonts.poppins(
                              color: abuText,
                            )),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }

  Widget inputPass() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Password',
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
                    'assets/icon_password.png',
                    width: 18,
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration.collapsed(
                          hintText: 'Your Password',
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
