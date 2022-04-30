import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopbar/theme.dart';

class BubleChat extends StatelessWidget {
  final String text;
  final bool pengirim;
  final bool adaProduk;

  BubleChat({this.pengirim = false, this.text = '', this.adaProduk = false});

  @override
  Widget build(BuildContext context) {
    productPreview() {
      return Container(
        margin: EdgeInsets.only(bottom: 12),
        padding: EdgeInsets.all(12),
        width: 231,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(pengirim ? 0 : 12),
            topLeft: Radius.circular(pengirim ? 12 : 0),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
          color: pengirim ? warnaHitam6 : warnaHitam4,
        ),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/image_sepatu.png',
                    width: 70,
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'COURT VISION2.0 SHOES',
                        style: GoogleFonts.poppins(
                          color: waranaPutih,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '\$57,15',
                        style: GoogleFonts.poppins(
                          fontWeight: medium,
                          color: warnaUngu,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: warnaUngu,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Add to Cart',
                    style: GoogleFonts.poppins(
                      color: warnaUngu,
                    ),
                  ),
                ),
                SizedBox(width: 8),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: warnaUngu,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Buy Now',
                    style: GoogleFonts.poppins(
                      fontWeight: medium,
                      color: warnaHitam6,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );
    }

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment:
            pengirim ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          adaProduk ? productPreview() : SizedBox(),
          Row(
            mainAxisAlignment:
                pengirim ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.6),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(pengirim ? 0 : 12),
                      topLeft: Radius.circular(pengirim ? 12 : 0),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                    color: pengirim ? warnaHitam6 : warnaHitam4,
                  ),
                  child: Text(
                    text,
                    style: GoogleFonts.poppins(
                      color: waranaPutih,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
