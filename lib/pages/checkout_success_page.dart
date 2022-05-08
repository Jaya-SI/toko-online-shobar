import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopbar/theme.dart';

class CheckoutSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    header() {
      return AppBar(
        backgroundColor: warnaHitam1,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          'Checkout Success',
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: warnaHitam3,
      appBar: header(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon_empty_cart.png',
              width: 80,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'You made a transaction',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: medium,
                color: waranaPutih,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Stay at home while we \nprepare your dream shoes',
              style: GoogleFonts.poppins(
                color: abuText2,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 196,
              height: 44,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: warnaUngu,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/home', (route) => false);
                },
                child: Text(
                  'Order Other Shoes',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: medium,
                    color: waranaPutih,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              width: 196,
              height: 44,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xff39374B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'View My Order',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: medium,
                    color: waranaPutih,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
