import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'NavBar.dart';
void main()
{
  runApp(StudetResultdetails());
}

class StudetResultdetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState()
  {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      home:Directionality(textDirection: TextDirection.rtl, child: Scaffold(

      drawer: NavBar(),
      appBar: AppBar(
        title: Text(" اسم الطالب"),
      ),
      body:Card(
        child:Container(
          height: 100,
          color: Colors.white,
          child: Row(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Expanded(
                    child: 
                    Icon(Icons.question_mark_sharp),

                    flex:2 ,
                  ),
                ),
              ),
              Expanded(
                child:Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 5,
                        child: ListTile(
                          title: Text("اسم المادة"),
                          subtitle: Text("90%"),
                        ),
                      ),
                      
                    ],
                  ),
                ),
                flex:8 ,
              ),
            ],
          ),
        ),
        elevation: 8,
        margin: EdgeInsets.all(10),
      ),
    ),
      ),
    );
  }
}