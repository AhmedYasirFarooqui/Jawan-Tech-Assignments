import 'dart:ui';
import 'package:ecom_app/history.dart';
import 'package:ecom_app/home.dart';
import 'package:ecom_app/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-commerce App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class AccountsPage extends StatefulWidget {
  const AccountsPage({Key? key}) : super(key: key);

  @override
  _AccountsPageState createState() => _AccountsPageState();
}

class _AccountsPageState extends State<AccountsPage> {
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
        backgroundColor: Colors.white,
        title: Text(
          'Profile',
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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.grey[100],
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10.0,
                ),
                Image(
                  image: AssetImage('images/person.png'),
                  width: 100.0,
                  height: 100.0,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(
                  children: [
                    Text(
                      'Ahmed Yasir',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'yasirfarooqui367@gmail.com',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      'Log out',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blueGrey),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text(
              'ACCOUNT INFORMATION',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            SizedBox(height: 30.0),
            ListTile(
              title: Text(
                'Full Name',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              subtitle: Text('Ahmed Yasir\n'),
              trailing: Icon(Icons.edit),
            ),
            CustomListTile('Email', 'yasirfarooqui367@gmail.com'),
            CustomListTile('Phone', '0304249009'),
            CustomListTile('Address', '2000 Washington Street, NY'),
            CustomListTile('Gender', 'Male'),
            CustomListTile('Date Of Birth', '12-02-2000'),
          ],
        ),
      ),
    );
  }
}

Widget CustomListTile(String text, String subtext) {
  return ListTile(
    title: Text(
      text,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
    ),
    subtitle: Text(subtext),
  );
}
