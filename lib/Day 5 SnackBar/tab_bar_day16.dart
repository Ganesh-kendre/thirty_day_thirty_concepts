import 'package:flutter/material.dart';
class TabBarWidgets extends StatelessWidget {
  const TabBarWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4, child: Scaffold(
      appBar: AppBar(
        title: Text("tabbar"),
        bottom: TabBar(
          indicatorColor: Colors.red,
          indicatorWeight: 5,
          tabs: [
            Tab(icon: Icon(Icons.home),text: 'home',),
            Tab(icon: Icon(Icons.settings),text: 'setting',),
            Tab(icon: Icon(Icons.person),text: 'person',),
            Tab(icon: Icon(Icons.library_add),text: 'status',),
          ],
        ),
      ),
      body: TabBarView(children: [
        Center(child: Text('home'),),
        Center(child: Text('setting'),),
        Center(child: Text('profile'),),
        Center(child: Text('status'),),
      ]),
    ),
    );
  }
}
