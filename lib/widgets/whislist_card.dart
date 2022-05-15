import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shopbar/models/product_model.dart';
import 'package:shopbar/providers/whislist_provider.dart';
import 'package:shopbar/theme.dart';

class WhislistCard extends StatelessWidget {
  final ProductModel product;

  WhislistCard(this.product);

  @override
  Widget build(BuildContext context) {
    WhislistProvider wishlistPorvider = Provider.of<WhislistProvider>(context);

    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(top: 10, left: 12, bottom: 14, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: warnaHitam4,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              product.galleries[0].url,
              width: 60,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: GoogleFonts.poppins(
                    fontWeight: semibold,
                    color: waranaPutih,
                  ),
                ),
                Text(
                  '\$${product.price}',
                  style: GoogleFonts.poppins(
                    color: warnaBiru,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              wishlistPorvider.setProduct(product);
            },
            child: Image.asset(
              'assets/button_whislist_blue.png',
              width: 34,
            ),
          ),
        ],
      ),
    );
  }
}
