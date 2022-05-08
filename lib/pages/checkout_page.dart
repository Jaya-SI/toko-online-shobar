import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopbar/theme.dart';
import 'package:shopbar/widgets/checkout_card.dart';

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    header() {
      return AppBar(
        backgroundColor: warnaHitam1,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.chevron_left,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Checkout Details',
          style: GoogleFonts.poppins(
            color: waranaPutih,
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      );
    }

    content() {
      return ListView(
        padding: EdgeInsets.symmetric(horizontal: 30),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'List Item',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: medium,
                        color: waranaPutih,
                      ),
                    ),
                    CheckoutCard(),
                    CheckoutCard(),
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: warnaHitam4,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Address Details',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: medium,
                    color: waranaPutih,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/icon_store_location.png',
                          width: 40,
                        ),
                        Image.asset(
                          'assets/icon_line.png',
                          height: 30,
                        ),
                        Image.asset(
                          'assets/icon_your_address.png',
                          width: 40,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Store Location',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: light,
                            color: abuText2,
                          ),
                        ),
                        Text(
                          'Adidas Core',
                          style: GoogleFonts.poppins(
                            fontWeight: medium,
                            color: waranaPutih,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Your Address',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: light,
                            color: abuText2,
                          ),
                        ),
                        Text(
                          'Marsemoon',
                          style: GoogleFonts.poppins(
                            fontWeight: medium,
                            color: waranaPutih,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: warnaHitam3,
      appBar: header(),
      body: content(),
    );
  }
}
