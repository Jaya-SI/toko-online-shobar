import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopbar/theme.dart';

class DetailChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    header() {
      return PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.chevron_left),
          ),
          backgroundColor: warnaHitam1,
          centerTitle: false,
          title: Row(
            children: [
              Image.asset(
                'assets/image_shop_online.png',
                width: 50,
              ),
              SizedBox(width: 12),
              Column(
                children: [
                  Text(
                    'JStore',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: medium,
                      color: waranaPutih,
                    ),
                  ),
                  Text(
                    'Online',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: light,
                      color: abuText,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: warnaHitam2,
      appBar: header(),
    );
  }
}
