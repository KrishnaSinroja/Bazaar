import 'package:bazaar/category_screen.dart';
import 'package:bazaar/display_buyer.dart';
import 'package:bazaar/product_not_added_screen.dart';
import 'package:bazaar/signup_screen.dart';
import 'package:bazaar/transaction_screen.dart';
import 'package:flutter/material.dart';

import 'filter_screen.dart';
import 'managerequest_screen.dart';

const Color pcolor=Color(0xFF739b21);

Card buildListTile (IconData iconData,String text){
  return Card(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32.0)
    ),
    color: pcolor,
    child: Container(
      height: 55,
      width: 150,
      child: ListTile(
        leading: Icon(
          iconData,
          color: Colors.white,
        ),
        title: Text(
            text,
            style: TextStyle(
            color:Colors.white
        ),
        ),
      )
    ),
  );
}

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
      
      drawer:Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: Column(
          children: <Widget>[
            ListView(
              shrinkWrap: true,
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('assets/images/logo.png'),
                          radius: 45.0,
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),


                buildListTile(Icons.insert_drive_file,'Transaction History'),
                buildListTile(Icons.people,'Manage Request'),
                buildListTile(Icons.monetization_on,'Current Transaction'),
                buildListTile(Icons.list,'Requirement List'),



              ],
            ),
            Flexible(
              flex:1,
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom:18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/logo.png'),
                        backgroundColor: Colors.white,
                        radius: 28.0,
                      ),
                      SizedBox(
                        width: 17.0,
                      ),
                      Text(
                        "BAZAAR",
                        style:
                        TextStyle(color: Color(0xFF739b21), fontSize: 25,letterSpacing: 6.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),

      ),

      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Bazaar'),

      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              FlatButton(
                child: Text(
                  'Category'
                ),
                disabledColor: pcolor,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Category()));
                },
              ),
              FlatButton(
                child: Text(
                    'Manage Requests'
                ),
                disabledColor: pcolor,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ManageRequest()));
                },
              ),
              FlatButton(
                child: Text(
                    'Dashboard'
                ),
                disabledColor: pcolor,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DisplayUI('1')));
                },
              ),


            ],
          ),
          Row(
            children: <Widget>[
              FlatButton(
                child: Text(
                    'Transaction'
                ),
                disabledColor: pcolor,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Transaction()));
                },
              ),
              RaisedButton(
                child: Text('Filter Dialog'),
                onPressed: (){
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => Filter(

                    ),
                  );
                },
              ),
              FlatButton(
                child: Text(
                    'No Product'
                ),
                disabledColor: pcolor,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NoProduct()));
                },
              ),
            ],
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
