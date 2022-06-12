import 'package:flutter/material.dart';
import 'NavBar.dart';
void activeUsers() => runApp( activeUser());

class activeUser extends StatefulWidget {
  @override
  _DataTableExample createState() => _DataTableExample();
}

class _DataTableExample extends State<activeUser> {
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl , child:Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: Text('Active users and Pending requests'),
        ),
        body: ListView(children: <Widget>[
          Center(
              child: Text(
                '\nActive users',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
          DataTable(
            columns: [
              DataColumn(label: Text(
                  'ID',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
              )),
              DataColumn(label: Text(
                  'Name',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
              )),
              DataColumn(label: Text(
                  'username',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
              )),
              DataColumn(label: Text(
                  'session time',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
              )),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('aseel')),
                DataCell(Text('aseeltaher')),
                DataCell(Text('23:00')),
              ]),
              DataRow(cells: [
                DataCell(Text('5')),
                DataCell(Text('Hothaifa')),
                DataCell(Text('Hothaifaq')),
                DataCell(Text('15:23')),
              ]),
              DataRow(cells: [
                DataCell(Text('10')),
                DataCell(Text('mohammed')),
                DataCell(Text('mohammed123')),
                DataCell(Text('22:34')),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Alaa')),
                DataCell(Text('alaa345')),
                DataCell(Text('12:23')),
              ]),
            ],
          ),
          Center(
              child: Text(
                '\npending requests\n',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
          DataTable(
            columns: [
              DataColumn(label: Text(
                  'ID',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
              )),
              DataColumn(label: Text(
                  'Name',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
              )),
              DataColumn(label: Text(
                  'username',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
              )),
              DataColumn(label: Text(
                  'request Date',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
              )),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('abdu')),
                DataCell(Text('abduhidar1')),
                DataCell(Text('23:00 apr/4/2022')),
              ]),
              DataRow(cells: [
                DataCell(Text('5')),
                DataCell(Text('Hothaifa')),
                DataCell(Text('Hothaifaq')),
                DataCell(Text('11:00 may/7/2022')),
              ]),

            ],
          ),
        ])
    ),
    ) ;
  }
}