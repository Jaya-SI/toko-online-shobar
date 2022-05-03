import 'package:flutter/material.dart';
import 'package:shopbar/theme.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    header() {
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
          )
        ],
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          header(),
        ],
      ),
    );
  }
}
