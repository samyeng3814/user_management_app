import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:user_management_app/constants/constant.dart';
import 'package:user_management_app/navigation/route_manager.dart';
import 'package:user_management_app/theme/themes.dart';

class EndDrawerWidget extends StatefulWidget {
  const EndDrawerWidget({
    super.key,
  });

  @override
  State<EndDrawerWidget> createState() => _EndDrawerWidgetState();
}

class _EndDrawerWidgetState extends State<EndDrawerWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.paddingOf(context).top;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero.copyWith(top: statusBarHeight),
        children: [
          ListTile(
            leading: SizedBox(
              height: 24,
              width: 24,
              child: SvgPicture.asset(
                'assets/svg/profile_icon.svg',
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              'Profile',
              style: AppTheme.of(context).bodyText,
            ),
            selected: _selectedIndex == 0,
            onTap: () {
              _onItemTapped(0);
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: SizedBox(
              height: 24,
              width: 24,
              child: SvgPicture.asset(
                'assets/svg/settings_icon.svg',
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              'Theme',
              style: AppTheme.of(context).bodyText,
            ),
            selected: _selectedIndex == 1,
            onTap: () {
              _onItemTapped(1);
            },
          ),
          ListTile(
            leading: SizedBox(
              height: 24,
              width: 24,
              child: SvgPicture.asset(
                'assets/svg/logout_icon.svg',
                fit: BoxFit.contain,
              ),
            ),
            title: Text(
              'Log out',
              style: AppTheme.of(context).bodyText,
            ),
            selected: _selectedIndex == 2,
            onTap: () {
              _onItemTapped(2);
              Get.back();
              Get.toNamed(RouteManager.loginPage);
            },
          ),
          ListTile(
            leading: SizedBox(
              height: 24,
              width: 24,
              child: SvgPicture.asset(
                'assets/svg/total_customer_icon.svg',
                fit: BoxFit.contain,
              ),
            ),
            title: Text(
              'Cutomers',
              style: AppTheme.of(context).bodyText,
            ),
            selected: _selectedIndex == 3,
            onTap: () {
              _onItemTapped(3);
              Get.back();
              Get.toNamed(RouteManager.customerListPage);
            },
          ),
          ListTile(
            leading: SizedBox(
              height: 24,
              width: 24,
              child: SvgPicture.asset(
                'assets/svg/add_customer.svg',
                fit: BoxFit.contain,
              ),
            ),
            title: Text(
              'Add Cutomers',
              style: AppTheme.of(context).bodyText,
            ),
            selected: _selectedIndex == 4,
            onTap: () {
              _onItemTapped(4);
              Get.back();
              Get.toNamed(RouteManager.addCustomerPage);
            },
          ),
        ],
      ),
    );
  }
}
