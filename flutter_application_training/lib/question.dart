import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<String> options = [
      "A",
      "B",
      "C",
      "D",
    ];
    options.shuffle();
    print(options);
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(),
            drawer: Drawer(),
            body: Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5)),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(top: 30, left: 10, right: 10),
                    child: Text("QUESTION ?!",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: options.map((option) {
                        return Card(child: ListTile(title: Text(option)));
                      }).toList(),
                    )),
                Container(
                    child: Row(
                  children: [
                    Container(
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.only(top: 30, left: 50, right: 10),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text("Back",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ))),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5)),
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.only(top: 30, left: 230, right: 10),
                        child: Text("Next",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            )))
                  ],
                ))
              ],
            )));
  }
}
