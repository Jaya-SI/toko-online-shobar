import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopbar/theme.dart';
import 'package:shopbar/widgets/chat_tile.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: warnaHitam1,
        title: Text(
          'Message Support',
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: medium,
            color: waranaPutih,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptyChat() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icon_headset.png',
            width: 80,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Opss no message yet?',
            style: GoogleFonts.poppins(
              color: waranaPutih,
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'You have never done a transaction',
            style: GoogleFonts.poppins(
              color: abuText,
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 44,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: warnaUngu,
              ),
              child: Text(
                'Explore Store',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: medium,
                  color: waranaPutih,
                ),
              ),
            ),
          )
        ],
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          color: warnaHitam3,
          width: double.infinity,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 30),
            children: [
              Column(
                children: [
                  ChatTile(),
                  ChatTile(),
                  ChatTile(),
                  ChatTile(),
                  ChatTile(),
                  ChatTile(),
                  ChatTile(),
                  ChatTile(),
                  ChatTile(),
                  ChatTile(),
                ],
              ),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
