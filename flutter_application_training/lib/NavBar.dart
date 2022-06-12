import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'classMatrial.dart';
import 'profile.dart';
import 'activeUsers.dart';
import 'StudentResult.dart';
import 'question.dart';
class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl , child:Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Ali'),
            accountEmail: Text('test@test.com'),

            currentAccountPicture: CircleAvatar(
              child:Icon(Icons.person),

            ),


            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.insert_drive_file),
            title: Text('دخول الاختبار'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StudetResult(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('المستخدمين'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => activeUser(),
                ),
              );
            },
          ),

          ListTile(
            leading: Icon(Icons.blinds_closed_sharp),
            title: Text('الفصول'),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => DropdownDemo(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.question_mark_sharp),
            title: Text('الاسئلة'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => question(),
                ),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.query_builder_outlined),
            title: Text('نتائج'),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StudetResult(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.perm_device_information),
            title: Text('معلومات المستخدم'),
            onTap: () {
              Navigator.push
                (context,
                MaterialPageRoute
                  (
                    builder:
                        (context)=>Myprofile()),
              );

            },
          ),
          Divider(),
          ListTile(
            title: Text('خروج'),
            leading: Icon(Icons.exit_to_app),
            onTap: () {
              SystemNavigator.pop();
            },
          ),
        ],
      ),
    ),
    );
  }
}