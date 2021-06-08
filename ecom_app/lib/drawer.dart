import 'dart:ui';
import 'package:ecom_app/history.dart';
import 'package:ecom_app/home.dart';
import 'package:ecom_app/main.dart';
import 'package:flutter/material.dart';

Widget myDrawer() {
  return Drawer(
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 60.0),
          width: double.infinity,
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.grey[400],
          ),
          child: Center(
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 50.0,
                  child: FlutterLogo(
                    size: 50.0,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Ahmed Yasir Farooqui',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'yasirfarooqui367@gmail.com',
                  style: TextStyle(fontSize: 16.0, color: Colors.black),
                )
              ],
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text(
            'Profile',
            style: TextStyle(fontSize: 16.0, color: Colors.black),
          ),
          onTap: () => AccountsPage(),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text(
            'Home',
            style: TextStyle(fontSize: 16.0, color: Colors.black),
          ),
          onTap: () => homePage(),
        ),
        ListTile(
          leading: Icon(Icons.history),
          title: Text(
            'History',
            style: TextStyle(fontSize: 16.0, color: Colors.black),
          ),
          onTap: () => HistoryPage(),
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text(
            'Logout',
            style: TextStyle(fontSize: 16.0, color: Colors.black),
          ),
          onTap: () {},
        ),
      ],
    ),
  );
}
