import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shopbar/models/user_model.dart';
import 'package:shopbar/providers/auth_provider.dart';
import 'package:shopbar/providers/product_provider.dart';
import 'package:shopbar/theme.dart';
import 'package:shopbar/widgets/product_card.dart';
import 'package:shopbar/widgets/product_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;
    ProductProvider productProvider = Provider.of<ProductProvider>(context);

    Widget header() {
      return Container(
        margin: EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello, ${user.name}',
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: semibold,
                      color: waranaPutih,
                    ),
                  ),
                  Text(
                    '@${user.username}',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: abuText,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(user.profilePhotoUrl),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget popularProducts() {
      return Container(
          margin: EdgeInsets.only(left: 30, top: 14),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: productProvider.products
                  .map((product) => ProductCard(product))
                  .toList(),
            ),
          ));
    }

    Widget newArrival() {
      return Container(
        margin: EdgeInsets.only(top: 14),
        child: Column(
          children: productProvider.products
              .map(
                (product) => ProductTile(product),
              )
              .toList(),
        ),
      );
    }

    return Scaffold(
      backgroundColor: warnaHitam1,
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            categories(),
            popularTitle(),
            popularProducts(),
            arivalTitle(),
            newArrival(),
          ],
        ),
      ),
    );
  }

  Widget categories() {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 30),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: EdgeInsets.only(right: 16),
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: warnaUngu,
              ),
              child: Text(
                'All Shoes',
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: medium,
                  color: waranaPutih,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: EdgeInsets.only(right: 16),
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: abuText,
                ),
                color: warnaTransaparan,
              ),
              child: Text(
                'Running',
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: medium,
                  color: abuText,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: EdgeInsets.only(right: 16),
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: abuText,
                ),
                color: warnaTransaparan,
              ),
              child: Text(
                'Training',
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: medium,
                  color: abuText,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: EdgeInsets.only(right: 16),
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: abuText,
                ),
                color: warnaTransaparan,
              ),
              child: Text(
                'Basketball',
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: medium,
                  color: abuText,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: EdgeInsets.only(right: 16),
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: abuText,
                ),
                color: warnaTransaparan,
              ),
              child: Text(
                'Hiking',
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: medium,
                  color: abuText,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget popularTitle() {
    return Container(
      margin: EdgeInsets.only(left: 30, top: 31),
      child: Text(
        'PopularProducts',
        style: GoogleFonts.poppins(
          color: waranaPutih,
          fontSize: 22,
          fontWeight: semibold,
        ),
      ),
    );
  }

  Widget arivalTitle() {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 30),
      child: Text(
        'New Arrivals',
        style: GoogleFonts.poppins(
          color: waranaPutih,
          fontSize: 22,
          fontWeight: semibold,
        ),
      ),
    );
  }
}
