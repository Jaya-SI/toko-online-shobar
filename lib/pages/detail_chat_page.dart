import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopbar/theme.dart';

class DetailChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    header() {
      return PreferredSize(
        preferredSize: Size.fromHeight(70),
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

    chatInput() {
      return Container(
        margin: EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: warnaHitam4,
                ),
                child: Center(
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      color: waranaPutih,
                    ),
                    decoration: InputDecoration.collapsed(
                        hintText: 'Typle Message...',
                        hintStyle: GoogleFonts.poppins(
                          color: abuText,
                        )),
                  ),
                ),
              ),
            ),
            SizedBox(width: 20),
            Image.asset(
              'assets/button_send.png',
              width: 45,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: warnaHitam2,
      appBar: header(),
      bottomNavigationBar: chatInput(),
    );
  }
}
