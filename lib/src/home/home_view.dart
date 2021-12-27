import 'package:get/get.dart';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:vaccine/src/home/home_pages/profile_pages.dart';

import 'home_controller.dart';
import 'home_pages/information_pages.dart';
import 'home_pages/maps_pages.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
          appBar: const PreferredSize(
              preferredSize: Size.fromHeight(40),
              child: SafeArea(child: SizedBox.shrink())),
          body: SizedBox.expand(
            child: PageView(
              controller: controller.homePageController,
              onPageChanged: (index) {
                controller.homeIndexPage = index;
                controller.update();
              },
              children: const [
                InformationHomePages(),
                MapsHomepages(),
                ProfileHomePages()
              ],
            ),
          ),
          bottomNavigationBar: BottomNavyBar(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            iconSize: 22,
            itemCornerRadius: 20,
            curve: Curves.elasticInOut,
            containerHeight: 50,
            selectedIndex: controller.homeIndexPage,
            showElevation: false,
            onItemSelected: (index) {
              controller.homeIndexPage = index;
              controller.homePageController.animateToPage(index,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.fastOutSlowIn);
              controller.update();
            },
            items: <BottomNavyBarItem>[
              BottomNavyBarItem(
                icon: const Icon(Icons.info_outlined),
                title: const Text('Informasi'),
                activeColor: Colors.grey,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: const Icon(Icons.home),
                title: const Text('Home'),
                activeColor: Colors.grey,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: const Icon(Icons.message),
                title: const Text('Akun'),
                activeColor: Colors.grey,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      },
    );
  }
}
