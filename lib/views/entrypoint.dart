import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:foody/constants/constants.dart';
import 'package:foody/controllers/tab_index_controller.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TabIndexController());

    return Obx(
      () => Scaffold(
        body: Stack(
          children: [
            Container(
              height: hieght,
              width: width,
              color: kOffWhite,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Theme(
                data: Theme.of(context).copyWith(canvasColor: kPrimary),
                child: BottomNavigationBar(
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  unselectedIconTheme:
                      const IconThemeData(color: Colors.black38),
                  selectedIconTheme: const IconThemeData(color: kSecondary),
                  onTap: (value) {
                    controller.setTableIndex = value;
                  },
                  currentIndex: controller.tabIndex,
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(AntDesign.appstore1),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.search),
                      label: 'Search',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.shopping_cart),
                      label: 'Cart',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.person),
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
