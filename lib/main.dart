import 'package:bazaar/category_screen.dart';
import 'package:bazaar/signup_screen.dart';
import 'package:flutter/material.dart';

import 'managerequest_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bazzar',
      theme: ThemeData(
        primaryColor: Color(0xFF739b21),
      ),
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Bazaar'),

      ),
      body: Row(
        children: <Widget>[
          FlatButton(
            child: Text(
              'Category'
            ),
            disabledColor: primarycolor,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Category()));
            },
          ),
          FlatButton(
            child: Text(
                'Manage Requests'
            ),
            disabledColor: primarycolor,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ManageRequest()));
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF739b21),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => signup()),
          );
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),

    );
    }
  }
