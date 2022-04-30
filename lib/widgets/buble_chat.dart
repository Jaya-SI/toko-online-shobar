import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopbar/theme.dart';

class BubleChat extends StatelessWidget {
  final String text;
  final bool pengirim;

  BubleChat({this.pengirim = false, this.text = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment:
            pengirim ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.6),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(pengirim ? 0 : 12),
                  topLeft: Radius.circular(pengirim ? 12 : 0),
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                color: pengirim ? warnaHitam6 : warnaHitam4,
              ),
              child: Text(
                text,
                style: GoogleFonts.poppins(
                  color: waranaPutih,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
