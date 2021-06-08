import 'dart:ui';

import 'package:ecom_app/home.dart';
import 'package:ecom_app/login.dart';
import 'package:ecom_app/main.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
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
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AccountsPage(),
                  ),
                ),
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'Home',
                style: TextStyle(fontSize: 16.0, color: Colors.black),
              ),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => homePage(),
                  ),
                ),
              },
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text(
                'History',
                style: TextStyle(fontSize: 16.0, color: Colors.black),
              ),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HistoryPage(),
                  ),
                ),
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                'Logout',
                style: TextStyle(fontSize: 16.0, color: Colors.black),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey[300],
        title: Text(
          'History',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
            color: Colors.black,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            CustomProductsList('images/iphone12.jpg', 'IPhone 12'),
            SizedBox(
              height: 20.0,
            ),
            CustomProductsList('images/macbook.jpg', 'Macbook Air'),
            SizedBox(
              height: 20.0,
            ),
            CustomProductsList('images/macbookpro.jpg', 'Mackbook Pro'),
            SizedBox(
              height: 20.0,
            ),
            CustomProductsList('images/gamingpc.jpg', 'Gaming PC'),
            SizedBox(
              height: 20.0,
            ),
            CustomProductsList('images/s20.jpg', 'Samsung S20'),
          ],
        ),
      ),
    );
  }
}

Widget CustomProductsList(String imgPath, String text) {
  return Container(
    decoration: new BoxDecoration(
      color: Colors.white,
      boxShadow: [
        //background color of box
        BoxShadow(
          color: Colors.black,
          blurRadius: 2.0,
          spreadRadius: 0.0,
          offset: Offset(2.0, 2.0),
        )
      ],
    ),
    margin: EdgeInsets.only(left: 10.0),
    width: 368.0,
    height: 100.0,
    child: ListTile(
      leading: Container(
        width: 100.0,
        height: 100.0,
        child: Image(
          image: AssetImage(imgPath),
        ),
      ),
      trailing: Text(
        '\$90',
        style: TextStyle(
            fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.purple),
      ),
      title: Text(
        text,
        style: TextStyle(fontSize: 20.0),
      ),
      subtitle: Text(
        '5.0 (23 Reviews)\n20 Pieces\nQuantity: 1',
        style: TextStyle(fontSize: 18.0),
      ),
    ),
  );
}
