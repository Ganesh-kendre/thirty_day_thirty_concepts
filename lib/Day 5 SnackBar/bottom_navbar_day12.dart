import 'package:day2_rows_and_columns/Day%205%20SnackBar/alertdailog_box_day9.dart';
import 'package:day2_rows_and_columns/Day%205%20SnackBar/drawer_day7.dart';
import 'package:day2_rows_and_columns/Day%205%20SnackBar/images_day8.dart';
import 'package:day2_rows_and_columns/Day%205%20SnackBar/snackbar.dart';
import 'package:flutter/material.dart';
class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int selectedCount=0;
  PageController pageController=PageController();
  void _pages(int index){
    setState(() {
      selectedCount=index;
    });
    pageController.jumpToPage(index);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'setting'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'profile'),
          BottomNavigationBarItem(icon: Icon(Icons.videocam),label: 'videos'),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedCount,
        onTap: _pages,
      ),
      body: PageView(
        controller: pageController,
        children: [
          AlertDailogWidget(),
          ImagesWidget(),
          SnackBarWidger(),
          MyDrawer()
        ],
      ),
    );
  }
}
