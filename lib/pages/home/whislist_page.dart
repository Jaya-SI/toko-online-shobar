import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shopbar/models/product_model.dart';
import 'package:shopbar/providers/whislist_provider.dart';
import 'package:shopbar/theme.dart';
import 'package:shopbar/widgets/whislist_card.dart';

import '../../providers/page_provide.dart';

class WhisList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    WhislistProvider wishlistProvider = Provider.of<WhislistProvider>(context);
    PageProvider pageProvider = Provider.of<PageProvider>(context);

    header() {
      return AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: warnaHitam1,
        title: Text(
          'Favorite',
          style: GoogleFonts.poppins(
            color: waranaPutih,
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      );
    }

    emptyWhislist() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: warnaHitam3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/image_whislist.png',
                width: 74,
              ),
              SizedBox(height: 23),
              Text(
                'Kamu ga punya barang impian ?',
                style: GoogleFonts.poppins(
                  color: waranaPutih,
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Yuk tambahin barang favorite kamu',
                style: GoogleFonts.poppins(
                  color: abuText2,
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 55,
                child: TextButton(
                  style: TextButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                      backgroundColor: warnaUngu,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                  onPressed: () {
                    pageProvider.currentIndex == 0;
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
        ),
      );
    }

    content() {
      return Expanded(
        child: Container(
          color: warnaHitam3,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            children: wishlistProvider.wishlist
                .map((product) => WhislistCard(product))
                .toList(),
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        // emptyWhislist(),
        wishlistProvider.wishlist.length == 0 ? emptyWhislist() : content(),
      ],
    );
  }
}
