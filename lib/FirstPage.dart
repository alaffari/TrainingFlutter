import 'package:flutter/material.dart';

class First extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return  _FirstPage();
  }

}


class _FirstPage extends State<First>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Center(
      child:  TextButton(
        child: Text("اضغط"),
        onPressed: (){

          Navigator.push(context, MaterialPageRoute(builder:(context)=> towPage(test: 'test')));
        },
      )
    );
  }
}

class towPage extends StatefulWidget{
  final String test;

  const towPage({super.key, required this.test});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return  _towPage();
  }



}

class _towPage extends State<towPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(widget.test);
  }




}