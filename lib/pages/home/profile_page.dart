import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shopbar/models/user_model.dart';
import 'package:shopbar/providers/auth_provider.dart';
import 'package:shopbar/theme.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;
    header() {
      return AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: warnaHitam1,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.all(30),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/image_profile.png',
                    width: 64,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hallo, ${user.name}',
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
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/sign-in', (route) => false);
                  },
                  child: Image.asset(
                    'assets/button_exit.png',
                    width: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    menuItem(String text) {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: 13,
                color: abuText2,
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: abuText2,
            ),
          ],
        ),
      );
    }

    content() {
      return Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            color: warnaHitam3,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Account',
                style: GoogleFonts.poppins(
                  color: waranaPutih,
                  fontSize: 16,
                  fontWeight: semibold,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/edit-profile');
                },
                child: menuItem('Edit Profile'),
              ),
              menuItem('Your Orders'),
              menuItem('Help'),
              SizedBox(
                height: 30,
              ),
              Text(
                'Account',
                style: GoogleFonts.poppins(
                  color: waranaPutih,
                  fontSize: 16,
                  fontWeight: semibold,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              menuItem('Privacy & Policy'),
              menuItem('Term of Service'),
              menuItem('Rate App'),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
