// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:foody/constants/constants.dart';
import 'package:foody/controllers/tab_index_controller.dart';
import 'package:foody/views/cart/cart_page.dart';
import 'package:foody/views/home/home_page.dart';
import 'package:foody/views/profile/profile_page.dart';
import 'package:foody/views/search/search_page.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pageList = [
    const HomePage(),
    const SearchPage(),
    const CartPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TabIndexController());

    return Obx(
      () => Scaffold(
        body: Stack(
          children: [
            // page
            pageList[controller.tabIndex],

            Align(
              alignment: Alignment.bottomCenter,
              child: Theme(
                data: Theme.of(context).copyWith(canvasColor: kPrimary),
                child: BottomNavigationBar(
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  elevation: 0,
                  unselectedIconTheme:
                      const IconThemeData(color: Colors.black38),
                  selectedIconTheme: const IconThemeData(color: kSecondary),
                  onTap: (value) {
                    controller.setTableIndex = value;
                  },
                  currentIndex: controller.tabIndex,
                  items: [
                    BottomNavigationBarItem(
                      icon: controller.tabIndex == 0
                          ? const Icon(AntDesign.appstore1)
                          : const Icon(AntDesign.appstore_o),
                      label: 'Home',
                    ),
                    const BottomNavigationBarItem(
                      icon: Icon(Icons.search),
                      label: 'Search',
                    ),
                    const BottomNavigationBarItem(
                      icon: Badge(
                        label: Text('1'),
                        child: Icon(
                          FontAwesome.opencart,
                        ),
                      ),
                      label: 'Cart',
                    ),
                    BottomNavigationBarItem(
                      icon: controller.tabIndex == 3
                          ? const Icon(FontAwesome.user_circle)
                          : const Icon(FontAwesome.user_circle_o),
                      label: 'Profile',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
