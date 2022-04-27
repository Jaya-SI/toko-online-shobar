import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopbar/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Home Page',
        style: GoogleFonts.poppins(
          color: waranaPutih,
        ),
      ),
    );
  }
}
