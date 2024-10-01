import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawarScreen extends StatelessWidget {
  const DrawarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
        child: Scaffold(
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(child: Container()),
                ListTile(
                  onTap: (){},
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                ),
                ListTile(
                  onTap: (){},
                  leading: Icon(Icons.person),
                  title: Text("Profile"),
                )
              ],
            ),
          ),
          appBar: AppBar(
            title: Text("Tabbar Example"),
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.home),),
              Tab(icon: Icon(Icons.person),),
            ],),
          ),
          body: TabBarView(children: [
            Container(color: Colors.red,),
            Container(color: Colors.yellow,),
          ],),
        ));
  }
}
