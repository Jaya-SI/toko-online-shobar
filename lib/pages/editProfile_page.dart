import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopbar/theme.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    header() {
      return AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
        ),
        centerTitle: true,
        title: Text(
          'Edit Profile',
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
        backgroundColor: warnaHitam1,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.check,
              color: warnaBiru,
            ),
          )
        ],
      );
    }

    nameInput() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: GoogleFonts.poppins(
                fontSize: 13,
                color: abuText2,
              ),
            ),
            TextFormField(
              style: GoogleFonts.poppins(
                color: waranaPutih,
                fontSize: 16,
              ),
              decoration: InputDecoration(
                hintText: 'Masukkan Nama Anda',
                hintStyle: GoogleFonts.poppins(
                  color: abuText,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: abuText2,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    usernameInput() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: GoogleFonts.poppins(
                fontSize: 13,
                color: abuText2,
              ),
            ),
            TextFormField(
              style: GoogleFonts.poppins(
                color: waranaPutih,
                fontSize: 16,
              ),
              decoration: InputDecoration(
                hintText: 'Masukkan Nama Anda',
                hintStyle: GoogleFonts.poppins(
                  color: abuText,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: abuText2,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    emailInput() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: GoogleFonts.poppins(
                fontSize: 13,
                color: abuText2,
              ),
            ),
            TextFormField(
              style: GoogleFonts.poppins(
                color: waranaPutih,
                fontSize: 16,
              ),
              decoration: InputDecoration(
                hintText: 'Masukkan Nama Anda',
                hintStyle: GoogleFonts.poppins(
                  color: abuText,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: abuText2,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    content() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_profile.png',
                  ),
                ),
              ),
            ),
            nameInput(),
            usernameInput(),
            emailInput(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: warnaHitam3,
      appBar: header(),
      body: content(),
      resizeToAvoidBottomInset: false,
    );
  }
}
