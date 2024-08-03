import 'package:flutter/material.dart';
import 'package:netflix_clone_app/utils/constants/color_constants.dart';
import 'package:netflix_clone_app/view/coming_soon_screen/coming_soon_screen.dart';
import 'package:netflix_clone_app/view/download_screen/download_screen.dart';
import 'package:netflix_clone_app/view/home_screen/home_screen.dart';
import 'package:netflix_clone_app/view/more_screen/more_screen.dart';
import 'package:netflix_clone_app/view/search_screen/search_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedIndex = 0;

  List<Widget> myScreens = [
    HomeScreen(),
    SearchScreen(),
    ComingSoonScreen(),
    DownloadScreen(),
    MoreScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myScreens[selectedIndex],
      backgroundColor: ColorConstants.mainBlack,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: ColorConstants.mainWhite,
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 12,
        selectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorConstants.mainBlack,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              backgroundColor: ColorConstants.mainBlack,
              icon: Icon(Icons.search),
              label: "Search"),
          BottomNavigationBarItem(
              backgroundColor: ColorConstants.mainBlack,
              icon: Icon(Icons.video_collection_outlined),
              label: "Coming soon"),
          BottomNavigationBarItem(
              backgroundColor: ColorConstants.mainBlack,
              icon: Icon(Icons.download),
              label: "Downloads"),
          BottomNavigationBarItem(
              backgroundColor: ColorConstants.mainBlack,
              icon: Icon(Icons.menu),
              label: "More"),
        ],
        onTap: (value) {
          selectedIndex = value;
          setState(() {});
        },
      ),
    );
  }
}
