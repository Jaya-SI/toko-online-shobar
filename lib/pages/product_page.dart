import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopbar/theme.dart';

class ProductPage extends StatefulWidget {
  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List images = [
    'assets/image_sepatu.png',
    'assets/image_sepatu.png',
    'assets/image_sepatu.png',
  ];

  int indexSaatini = 0;

  @override
  Widget build(BuildContext context) {
    indicator(int index) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 2),
        width: indexSaatini == index ? 16 : 4,
        height: 4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: indexSaatini == index ? warnaUngu : Color(0xffC4C4C4),
        ),
      );
    }

    header() {
      int index = -1;

      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: 30,
              right: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.chevron_left,
                  ),
                ),
                Icon(
                  Icons.shopping_bag,
                  color: warnaHitam1,
                ),
              ],
            ),
          ),
          CarouselSlider(
            items: images
                .map(
                  (image) => Image.asset(
                    image,
                    width: MediaQuery.of(context).size.width,
                    height: 310,
                    fit: BoxFit.cover,
                  ),
                )
                .toList(),
            options: CarouselOptions(
                initialPage: 0,
                onPageChanged: (index, reason) {
                  setState(() {
                    indexSaatini = index;
                  });
                }),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.map((e) {
              index++;
              return indicator(index);
            }).toList(),
          ),
        ],
      );
    }

    content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 17),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(24),
          ),
          color: warnaHitam1,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30, left: 30, right: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sepatu Adidas Anjay',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: medium,
                            color: waranaPutih,
                          ),
                        ),
                        Text(
                          'Hiking',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: abuText2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/button_whislist.png',
                    width: 46,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 30, right: 30),
              padding: EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: warnaHitam2,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Price starts from',
                    style: GoogleFonts.poppins(
                      color: waranaPutih,
                    ),
                  ),
                  Text(
                    '\$143,98',
                    style: GoogleFonts.poppins(
                      color: warnaBiru,
                      fontSize: 16,
                      fontWeight: semibold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 30, right: 30),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: GoogleFonts.poppins(
                      fontWeight: medium,
                      color: waranaPutih,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Unpaved trails and mixed surfaces are easy when you have the traction and support you need. Casual enough for the daily commute.',
                    style: GoogleFonts.poppins(
                      color: abuText,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroud1,
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
