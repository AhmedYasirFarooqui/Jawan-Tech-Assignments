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
      home: ToDoApp(),
    );
  }
}

class ToDoApp extends StatefulWidget {
  const ToDoApp({Key? key}) : super(key: key);

  @override
  _ToDoAppState createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  var output = "";
  List<dynamic> myList = ["Pray Fajr"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("To Do App"),
          centerTitle: true,
          backgroundColor: Colors.amber),
      body: ListView.builder(
        itemCount: myList.length,
        itemBuilder: (context, index) {
          return Container(
            height: 50.0,
            color: Colors.green,
            margin: EdgeInsets.only(top: 5),
            child: ListTile(
              title: Text("${myList[index]}"),
              trailing: Container(
                width: 90.0,
                child: Row(
                  children: [
                    GestureDetector(
                      child: Icon(Icons.edit),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Edit Item"),
                              content: TextField(
                                onChanged: (value) {
                                  output = value;
                                },
                              ),
                              actions: [
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      myList.replaceRange(
                                          index, index + 1, {output});
                                    });
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("Edit"),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    GestureDetector(
                      child: Icon(Icons.delete),
                      onTap: () {
                        setState(() {
                          myList.removeAt(index);
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Add Item"),
                content: TextField(
                  onChanged: (value) {
                    output = value;
                  },
                ),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        myList.add(output);
                      });
                      Navigator.of(context).pop();
                    },
                    child: Text("Add"),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }
}
