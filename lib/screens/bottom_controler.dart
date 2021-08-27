import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:pwa/screens/bottom_nav_pages/accaount_page.dart';
import 'package:pwa/screens/bottom_nav_pages/home_page.dart';
import 'package:pwa/screens/bottom_nav_pages/menu_page.dart';
import 'package:pwa/screens/bottom_nav_pages/purchase_page.dart';
import 'package:pwa/screens/bottom_nav_pages/wishlist_page.dart';
import 'package:pwa/utils/colors.dart';

class BottomController extends StatelessWidget {
  BottomController({Key? key}) : super(key: key);
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    final bool showFab = MediaQuery.of(context).viewInsets.bottom == 0.0;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: showFab
          ? Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PurchasePage(),
                    ),
                  );
                },
                backgroundColor: kprimeryColor,
                elevation: 0,
                child: SvgPicture.asset(
                  'assets/icons/cart.svg',
                  color: Colors.white,
                  fit: BoxFit.cover,
                ),
              ),
            )
          : null,
      body: PersistentTabView(context,
          controller: _controller,
          screens: _buildScreens(),
          items: _navBarsItems(),
          // navBarHeight: 60.0,
          padding: NavBarPadding.all(4),
          confineInSafeArea: true,
          backgroundColor: Colors.white, // Default is Colors.white.
          handleAndroidBackButtonPress: true, // Default is true.
          resizeToAvoidBottomInset:
              true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
          stateManagement: true, // Default is true.
          hideNavigationBarWhenKeyboardShows:
              true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
          decoration: NavBarDecoration(
            colorBehindNavBar: Colors.white,
          ),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: ItemAnimationProperties(
            // Navigation Bar's items animation properties.
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: ScreenTransitionAnimation(
            // Screen transition animation on change of selected tab.
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
          navBarStyle:
              NavBarStyle.simple // Choose the nav bar style with this property.
          ),
    );
  }
}

List<Widget> _buildScreens() {
  return [
    HomePage(),
    MenuPage(),
    WishListPage(),
    AccaountPage(),
    PurchasePage()
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
        activeColorPrimary: kprimeryColor,
        icon: SvgPicture.asset(
          'assets/icons/home_color.svg',
          fit: BoxFit.contain,
        ),
        inactiveIcon: SvgPicture.asset(
          'assets/icons/home.svg',
          fit: BoxFit.contain,
        ),
        title: 'Home'),
    PersistentBottomNavBarItem(
        activeColorPrimary: kprimeryColor,
        icon: SvgPicture.asset(
          'assets/icons/menu.svg',
          color: kprimeryColor,
          fit: BoxFit.contain,
        ),
        inactiveIcon: SvgPicture.asset(
          'assets/icons/menu.svg',
          fit: BoxFit.contain,
        ),
        title: 'Menu'),
    PersistentBottomNavBarItem(
        activeColorPrimary: kprimeryColor,
        icon: SvgPicture.asset(
          'assets/icons/wish.svg',
          color: kprimeryColor,
          fit: BoxFit.contain,
        ),
        inactiveIcon: SvgPicture.asset(
          'assets/icons/wish.svg',
          fit: BoxFit.contain,
        ),
        title: 'WishList'),
    PersistentBottomNavBarItem(
      activeColorPrimary: kprimeryColor,
      icon: SvgPicture.asset(
        'assets/icons/account.svg',
        color: kprimeryColor,
        fit: BoxFit.contain,
      ),
      inactiveIcon: SvgPicture.asset(
        'assets/icons/account.svg',
        fit: BoxFit.contain,
      ),
      title: 'Account',
    ),
    PersistentBottomNavBarItem(
        activeColorPrimary: kprimeryColor,
        icon: Icon(Icons.card_travel, color: Colors.white),
        onPressed: (value) {},
        title: 'Cart'),
  ];
}
