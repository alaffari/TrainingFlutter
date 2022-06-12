import 'package:flutter/material.dart';
import 'NavBar.dart';


class question extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Home()

    );
  }
}

class Home extends  StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    List<String> countries = ["A", "B","C"];
    countries.shuffle();
    print(countries);


    return MaterialApp(
      home: Directionality(textDirection: TextDirection.rtl, child: Scaffold(
          drawer: NavBar(),
          appBar: AppBar(
              title: Text("Question"),
              backgroundColor: Colors.blue
          ),
          body: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              child: Column(
                children: countries.map((country){
                  return Card(
                      child:ListTile(
                          title: Text(country)
                      )
                  );
                }).toList(),
              )
          )
      ),
      ),


    );
  }
}