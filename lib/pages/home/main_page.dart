import 'package:flutter/material.dart';
import 'package:shopbar/theme.dart';

class MainPage extends StatelessWidget {
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

  Widget customBottomNav() {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          backgroundColor: warnaHitam4,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_home.png',
                width: 21,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_chat.png',
                width: 20,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_whislist.png',
                width: 20,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_profile.png',
                width: 18,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      backgroundColor: warnaHitam1,
      body: Center(child: Text('HomePage')),
    );
  }
}
