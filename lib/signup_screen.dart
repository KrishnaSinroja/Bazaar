

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';



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

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

const Color primarycolor=Color(0xFF739b21);

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {

    final data= MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: data.size.height,
        width: data.size.width,
        child: Center(
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

                    buildCard(icon:Icons.person,titype: TextInputType.text,htext: 'Full Name',mdata:data),
                    buildCard(icon:Icons.person_pin,titype: TextInputType.text,htext: 'Username',mdata:data),
                    buildCard(icon:Icons.lock,titype: TextInputType.visiblePassword,htext: 'Password',mdata:data),
                    buildCard(icon:Icons.phone,titype: TextInputType.phone,htext: 'Phone Number',mdata:data),
                    buildCard(icon:Icons.location_on,titype: TextInputType.multiline,htext: 'Address',mdata:data),
                    SizedBox(
                      height:10.0 ,
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
                          "SignUp",
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height:10.0 ,
                    ),
                    Text(
                      'Already Registerd??',
                      style: TextStyle(
                        fontSize: 19.0,
                        color: primarycolor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height:10.0 ,
                    ),
                    InkWell(
                      child: Text(
                          'Login',
                          style: TextStyle(
                              color: primarycolor,
                              fontWeight: FontWeight.w700,
                              fontSize: 19.0,
                              decoration: TextDecoration.underline
                          ),
                      ),
                      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>login())),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
