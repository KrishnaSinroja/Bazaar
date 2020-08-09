import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoProduct extends StatefulWidget {
  @override
  _NoProductState createState() => _NoProductState();
}
const Color primarycolor=Color(0xFF739b21);
class _NoProductState extends State<NoProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text("No Product Found"),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 230,
          height: 200,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: <Widget>[
                  Image.asset('assets/images/plant.png',width: 120,height: 120,),
                  Text(
                      'Error : Product not added!',
                      style: TextStyle(
                        color: primarycolor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold
                      ),
                  ),
                ],
              ),
            ),
            elevation: 5,
            color: Colors.grey[200],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32.0)
            ),
          ),
        ),
      ),
    );
  }
}
