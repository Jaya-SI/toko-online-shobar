import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopbar/theme.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    header() {
      return AppBar(
        backgroundColor: warnaHitam1,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.chevron_left),
        ),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Your Cart',
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: medium,
            color: waranaPutih,
          ),
        ),
      );
    }

    emptyCart() {
      return Center(
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
              'Opss! Your Cart is Empty',
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
              'Let\'s find your favorite shoes',
              style: GoogleFonts.poppins(
                color: abuText2,
              ),
            ),
            Container(
              width: 152,
              height: 44,
              margin: EdgeInsets.only(top: 20),
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
        ),
      );
    }

    return Scaffold(
      backgroundColor: warnaHitam3,
      appBar: header(),
      body: emptyCart(),
    );
  }
}
