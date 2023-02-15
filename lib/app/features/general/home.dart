import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:runaway/app/features/feed/view/feed.dart';
import 'package:runaway/app/features/feed/view/feedMap.dart';
import 'package:runaway/app/features/profile/view/profile.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  PersistentTabController controller = PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,

      backgroundColor:
          Theme.of(context).primaryColor, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(1.0),
        colorBehindNavBar: Colors.white,
        // boxShadow: <BoxShadow>[
        //   BoxShadow(
        //       color: Colors.black54,
        //       blurRadius: 15.0,
        //       offset: Offset(0.0, 0.75))
        // ],
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),

      navBarStyle:
          NavBarStyle.style12, // Choose the nav bar style with this property.
    );
  }
}

List<Widget> _buildScreens() {
  return [FeedPage(), FeedMapPage(), ProfilePage()];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Icon(
        FontAwesomeIcons.house,
      ),
      title: ("Feed"),
      activeColorPrimary: Color.fromARGB(255, 0, 0, 0),
      inactiveColorPrimary: Colors.grey[600],
    ),
    PersistentBottomNavBarItem(
      icon: Icon(
        FontAwesomeIcons.map,
        size: 32,
      ),
      title: ("FeedMap"),
      activeColorPrimary: Color.fromARGB(255, 0, 0, 0),
      inactiveColorPrimary: Colors.grey[600],
    ),
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.profile_circled, size: 32),
      title: ("Profile"),
      activeColorPrimary: Color.fromARGB(255, 0, 0, 0),
      inactiveColorPrimary: Colors.grey[600],
    ),
  ];
}
