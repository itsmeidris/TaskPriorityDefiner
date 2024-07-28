import 'package:flutter/material.dart';
import 'package:navigation_routing/Widgets/Tab_Bar_Widgets/myTabView.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Demo'),
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),
        body: const Column(
          children: [
           TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  color: Colors.green,
                ),
                text: 'Home',
              ),
              Tab(
                icon: Icon(
                  Icons.settings,
                  color: Colors.redAccent,
                ),
                text: 'Settings',
              ),
              Tab(
                icon: Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                text: 'Personal',
              )
            ],
           ),
            Expanded(
             child: TabBarView(
              children: [
                MyTabView(
                  myColor: Colors.green,
                  myIcon: Icons.home
                ),
                MyTabView(
                  myColor: Colors.redAccent, 
                  myIcon: Icons.settings
                ),
                MyTabView(myColor: Colors.blue, myIcon: Icons.person)
              ],
             ),
           )
          ],
        ),
      ),
    );
  }
}

//The TabBar in Flutter is a widget that allows you to create a tabbed 
//interface, with the TabBarView widget displaying the content for each tab. 
//The key properties of TabBar are tabs, which defines the tabs to 
//be displayed, and controller, which manages the state 
//and synchronization of the tab bar.


