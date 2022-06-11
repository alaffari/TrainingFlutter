import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'profile.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool rememberpwd = false;
  bool sec = true;
  var visable = Icon(
    Icons.visibility,
    color: Color(0xff4c5166),
  );
  var visableoff = Icon(
    Icons.visibility_off,
    color: Color(0xFF4E5264),
  );

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 51, 48, 206),
                      Color.fromARGB(255, 70, 72, 204),
                      Color.fromARGB(255, 69, 80, 172),
                      Color.fromARGB(255, 70, 80, 110),
                      Color.fromARGB(108, 61, 47, 192),
                      Color.fromARGB(255, 99, 87, 201),
                      Color.fromARGB(255, 86, 43, 202),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 100,),
                        Text(
                          "Hello User! ☺️",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 100,),
                        buildEmail(),
                        SizedBox(height: 50,),
                        buildPassword(),
                        SizedBox(height: 50,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildRememberassword(),
                            buildForgetPassword()
                          ],
                        ),
                        SizedBox(height: 30,),
                        buildLoginButton(),
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //buildFacebook(),
                            //buildGoogle(),
                            //buildTwitter()
                          ],
                        ),
                        SizedBox(height: 60,),
                        Text("الشروط والاحكام",style: TextStyle(color: Colors.white,fontSize: 10),)

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10,),
        Container(
          height: 60,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(

              color: Color(0xffebefff),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 2),
              )]
          ),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding:EdgeInsets.only(top: 14),
                prefixIcon: Icon(Icons.email,color: Color(0xff4c5166),),
                hintText: 'Email',hintStyle: TextStyle(color: Colors.black38)
            ),
          ),
        ),
      ],
    );
  }
  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Password", style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold
        ),),
        SizedBox(height: 10,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Color(0xffebefff),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 2)
              )
            ],
          ),
          height: 60,
          child: TextField(
            obscureText: sec,
            style: TextStyle(
                color: Colors.black
            ),
            decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      sec = !sec;
                    });
                  },
                  icon: sec ? visableoff : visable,
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(Icons.vpn_key,
                  color: Color(0xff4c5166),
                ),
                hintText: "pwd",
                hintStyle: TextStyle(
                    color: Colors.black38
                )
            ),
          ),
        )
      ],
    );
  }
  Widget buildRememberassword(){
    return Container(
      height: 20,
      child: Row(
        children: [
          Theme(data: ThemeData(unselectedWidgetColor: Colors.white),
              child: Checkbox(
                value:  rememberpwd,
                checkColor: Colors.blueGrey,
                activeColor: Colors.white,
                onChanged: (value)
                {
                  setState(() {
                    //rememberpwd=value;
                  });
                },
              )),
          Text("Remember me", style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white),),
        ],
      ),
    );
  }
  Widget buildForgetPassword(){
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(child: Text("Forget Password !",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),onPressed: (){},),
    );
  }
  Widget buildLoginButton(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Container(
        width: double.infinity,
        child:  RaisedButton(
          onPressed: (){
            Navigator.push
              (context,
              MaterialPageRoute
                (
                  builder:
                      (context)=>Myprofile()),
            );

          },
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color:Color(0xff3c6970),
          padding: EdgeInsets.all(30),
          child: Text("Login", style: TextStyle(fontSize: 10,
              color: Colors.white,
              fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }

}
