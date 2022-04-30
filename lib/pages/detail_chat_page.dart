import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopbar/theme.dart';
import 'package:shopbar/widgets/buble_chat.dart';

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

    chatProduct() {
      return Container(
        margin: EdgeInsets.only(bottom: 20),
        padding: EdgeInsets.all(10),
        height: 74,
        width: 225,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: warnaHitam3,
          border: Border.all(
            color: warnaUngu,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/image_sepatu.png',
                width: 54,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'COURT VISIO...COURT VISIO...',
                    style: GoogleFonts.poppins(
                      color: waranaPutih,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 2),
                  Text(
                    '\$57,15',
                    style: GoogleFonts.poppins(
                      color: warnaUngu,
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/icon_close.png',
              width: 22,
            ),
          ],
        ),
      );
    }

    chatInput() {
      return Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            chatProduct(),
            Row(
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
          ],
        ),
      );
    }

    content() {
      return ListView(
        padding: EdgeInsets.symmetric(horizontal: 30),
        children: [
          BubleChat(
            pengirim: true,
            text: 'Apakah barang ini tersedia ?',
            adaProduk: true,
          ),
          BubleChat(
            pengirim: false,
            text: 'Good night, This item is only available in size 42 and 43',
            adaProduk: false,
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: warnaHitam2,
      appBar: header(),
      bottomNavigationBar: chatInput(),
      body: content(),
    );
  }
}
