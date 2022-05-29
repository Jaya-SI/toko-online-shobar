import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopbar/models/cart_model.dart';
import 'package:shopbar/theme.dart';

class CheckoutCard extends StatelessWidget {
  final CartModel cart;

  CheckoutCard(this.cart);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
      decoration: BoxDecoration(
        color: warnaHitam4,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: NetworkImage(
                  cart.product.galleries[0].url,
                ),
              ),
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
                  cart.product.name,
                  style: GoogleFonts.poppins(
                    fontWeight: semibold,
                    color: waranaPutih,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  '\$${cart.product.price}',
                  style: GoogleFonts.poppins(
                    color: warnaBiru,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            '${cart.quantity} Items',
            style: GoogleFonts.poppins(
              color: warnaAbu,
            ),
          ),
        ],
      ),
    );
  }
}
