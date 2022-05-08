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
          Container(
            margin: EdgeInsets.only(
              top: 30,
            ),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: warnaHitam4,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Payment Summary',
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Product Quantity',
                      style: GoogleFonts.poppins(
                        color: abuText2,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '2 Items',
                      style: GoogleFonts.poppins(
                        color: waranaPutih,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Product Price',
                      style: GoogleFonts.poppins(
                        color: abuText2,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '\$575.96',
                      style: GoogleFonts.poppins(
                        color: waranaPutih,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shipping',
                      style: GoogleFonts.poppins(
                        color: abuText2,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'Free',
                      style: GoogleFonts.poppins(
                        color: waranaPutih,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Divider(
                  thickness: 1,
                  color: Color(0xff2E3141),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: GoogleFonts.poppins(
                        fontWeight: semibold,
                        color: warnaBiru,
                      ),
                    ),
                    Text(
                      '\$575.92',
                      style: GoogleFonts.poppins(
                        fontWeight: semibold,
                        color: warnaBiru,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Divider(
            thickness: 1,
            color: Color(0xff2B2938),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 30),
            width: double.infinity,
            height: 50,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: warnaUngu,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Checkout Now',
                style: GoogleFonts.poppins(
                  color: waranaPutih,
                  fontSize: 16,
                  fontWeight: semibold,
                ),
              ),
            ),
          )
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
