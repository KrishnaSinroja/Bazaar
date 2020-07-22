import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'main.dart';

Card buildCard({IconData icon,TextInputType titype,String htext,MediaQueryData mdata}){
  return Card(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32.0)
    ),
    borderOnForeground: false,
    child: Container(
      width: mdata.size.width*0.9,
      child: ListTile(

        title: TextFormField(
          keyboardType: titype,
          decoration: InputDecoration(
            hintText: htext,
            hintStyle: TextStyle(color: primarycolor),
            contentPadding: EdgeInsets.all(12),
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            prefixIcon: Icon(
              icon,
              color: primarycolor,
            ),
          ),
          style: TextStyle(
            color: primarycolor,
          ),
        ),
      ),
    ),
  );

}

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {

    final data=MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 7, 12, 7),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/logo.png'),
                    radius: 55.0,
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),

                  buildCard(icon:Icons.person_pin,titype: TextInputType.text,htext: 'Username',mdata: data),
                  buildCard(icon:Icons.lock,titype: TextInputType.visiblePassword,htext: 'Password',mdata: data),

                  SizedBox(
                    height:20.0 ,
                  ),

                  Container(
                    height: 55,
                    width: 170,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                          side: BorderSide(color: primarycolor)
                      ),
                      color: primarycolor,
                      textColor: Colors.white,
                      padding: EdgeInsets.all(8.0),
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
