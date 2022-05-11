import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shopbar/providers/auth_provider.dart';
import 'package:shopbar/theme.dart';

class SignUpPage extends StatelessWidget {
  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController usernameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    handleSignUp() async {
      if (await authProvider.register(
        name: nameController.text,
        username: usernameController.text,
        email: emailController.text,
        password: passwordController.text,
      )) {
        Navigator.pushNamed(context, '/home');
      }
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30, left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign Up',
              style: GoogleFonts.poppins(
                fontSize: 21,
                fontWeight: semibold,
                color: waranaPutih,
              ),
            ),
            SizedBox(height: 2),
            Text(
              'Register and Happy Shoping',
              style: GoogleFonts.poppins(
                color: abuText,
              ),
            ),
          ],
        ),
      );
    }

    Widget name() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Full Name',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: medium,
                color: waranaPutih,
              ),
            ),
            SizedBox(height: 12),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: warnaHitam2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_name.png',
                      width: 16,
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(
                        controller: nameController,
                        style: GoogleFonts.poppins(
                          color: waranaPutih,
                        ),
                        decoration: InputDecoration.collapsed(
                            hintText: 'Your Full Name',
                            hintStyle: GoogleFonts.poppins(
                              color: abuText,
                            )),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget username() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: medium,
                color: waranaPutih,
              ),
            ),
            SizedBox(height: 12),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: warnaHitam2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_username.png',
                      width: 16,
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(
                        controller: usernameController,
                        style: GoogleFonts.poppins(
                          color: waranaPutih,
                        ),
                        decoration: InputDecoration.collapsed(
                            hintText: 'Your Username',
                            hintStyle: GoogleFonts.poppins(
                              color: abuText,
                            )),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget email() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: medium,
                color: waranaPutih,
              ),
            ),
            SizedBox(height: 12),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: warnaHitam2,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_email.png',
                      width: 17,
                    ),
                    SizedBox(width: 17),
                    Expanded(
                      child: TextFormField(
                        controller: emailController,
                        style: GoogleFonts.poppins(
                          color: waranaPutih,
                        ),
                        decoration: InputDecoration.collapsed(
                            hintText: 'Your Email Address',
                            hintStyle: GoogleFonts.poppins(
                              color: abuText,
                            )),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget password() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: medium,
                color: waranaPutih,
              ),
            ),
            SizedBox(height: 12),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: warnaHitam2,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_password.png',
                      width: 16,
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        style: GoogleFonts.poppins(
                          color: waranaPutih,
                        ),
                        decoration: InputDecoration.collapsed(
                            hintText: 'Your Password',
                            hintStyle: GoogleFonts.poppins(
                              color: abuText,
                            )),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget btnSignUp(BuildContext context) {
      return Container(
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: TextButton(
          onPressed: handleSignUp,
          style: TextButton.styleFrom(
              backgroundColor: warnaUngu,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              )),
          child: Text(
            'Sign Up',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: medium,
              color: waranaPutih,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: warnaHitam1,
      body: SafeArea(
        child: ListView(
          children: [
            title(),
            SizedBox(height: 50),
            name(),
            SizedBox(height: 20),
            username(),
            SizedBox(height: 20),
            email(),
            SizedBox(height: 20),
            password(),
            SizedBox(height: 30),
            btnSignUp(context),
            SizedBox(height: 115),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 85),
              child: Row(
                children: [
                  Text(
                    'Already have an account?',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: abuText,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: medium,
                        color: warnaUngu,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
