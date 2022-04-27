import 'package:flutter/material.dart';
import 'package:shopbar/pages/home/chat_page.dart';
import 'package:shopbar/pages/home/home_page.dart';
import 'package:shopbar/pages/home/profile_page.dart';
import 'package:shopbar/pages/home/whislist_page.dart';
import 'package:shopbar/theme.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget cartButton() {
    return FloatingActionButton(
      onPressed: () {},
      child: Image.asset(
        'assets/icon_cart.png',
        width: 20,
      ),
      backgroundColor: warnaHijau,
    );
  }

  int indexSaatIni = 0;

  Widget customBottomNav() {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 12,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          showSelectedLabels: false,
          currentIndex: indexSaatIni,
          onTap: (value) {
            setState(() {
              indexSaatIni = value;
            });
          },
          backgroundColor: warnaHitam4,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: Image.asset(
                  'assets/icon_home.png',
                  color: indexSaatIni == 0 ? warnaUngu : abuIcon,
                  width: 21,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: Image.asset(
                  'assets/icon_chat.png',
                  color: indexSaatIni == 1 ? warnaUngu : abuIcon,
                  width: 20,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: Image.asset(
                  'assets/icon_whislist.png',
                  color: indexSaatIni == 2 ? warnaUngu : abuIcon,
                  width: 20,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: Image.asset(
                  'assets/icon_profile.png',
                  color: indexSaatIni == 3 ? warnaUngu : abuIcon,
                  width: 18,
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }

  Widget? body() {
    switch (indexSaatIni) {
      case 0:
        return HomePage();
        break;
      case 1:
        return ChatPage();
        break;
      case 2:
        return WhisList();
        break;
      case 3:
        return ProfilePage();
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      backgroundColor: warnaHitam1,
      body: body(),
    );
  }
}
