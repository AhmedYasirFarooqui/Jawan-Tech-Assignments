import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyStoreApp(),
    );
  }
}

class MyStoreApp extends StatefulWidget {
  const MyStoreApp({Key? key}) : super(key: key);

  @override
  _MyStoreAppState createState() => _MyStoreAppState();
}

class _MyStoreAppState extends State<MyStoreApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: Text(
          "ECOMM APP",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
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
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Items",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                  ),
                  Text(
                    "view more",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  myItems("images/gamingpc.jpg", "Gaming PC"),
                  SizedBox(width: 10.0),
                  myItems("images/iphone12.jpg", "IPhone 12"),
                  SizedBox(width: 10.0),
                  myItems("images/macbook.jpg", "MacBook"),
                  SizedBox(width: 10.0),
                  myItems("images/macbookpro.jpg", "MacBook Pro"),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "More Categories",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 18.0,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                categories("Chargers", Icons.charging_station),
                categories("Batteries", Icons.battery_std),
                categories("Earpieces", Icons.earbuds_battery),
                categories("Other", Icons.devices_other),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "popular Items",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 18.0,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 10.0,
            ),
            /*GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 20.0,
              mainAxisSpacing: 20.0,
              children: List.generate(
                6,
                (index) {
                  return null;
                },
              ),
            ),*/
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
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
        //currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        //onTap: (){},
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.search),
          backgroundColor: Colors.purple),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}

Widget myItems(String imgPath, String _itemName) {
  return Container(
    width: 200.0,
    height: 500.0,
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: Column(
      children: [
        Container(
          child: Image(
            image: AssetImage(imgPath),
            fit: BoxFit.cover,
          ),
        ),
        Text(
          _itemName,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

Widget categories(String _itemName, IconData _icon) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      width: 100.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(_icon),
          SizedBox(width: 5.0),
          Text(
            _itemName,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          )
        ],
      ),
    ),
  );
}
