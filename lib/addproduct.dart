import 'package:bazaar/login_screen.dart';
import 'package:bazaar/signup_screen.dart' as prefix;
import 'package:bazaar/signup_screen.dart' as prefix;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0)
        ),
        title: Text('Congratulations!!'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Your product is added.'),
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Done'),
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0)
            ),
            color: prefix.primarycolor,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}


class AddProduct extends StatefulWidget {
  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {

    const Color primarycolor=Color(0xFF739b21);
    final data=MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text("Product Details"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  buildCard(icon:Icons.sort_by_alpha,titype: TextInputType.text,htext: 'Commodity Name',mdata:data),
                ],
              ),

              Row(
                children: <Widget>[
                  Expanded(child: buildCard(icon:Icons.fiber_pin,titype: TextInputType.number,htext: 'Breed',mdata:data)),
                  Expanded(child: prefix.buildButton(context, Icons.photo, 'Add Photo')),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/logo.png'),
                    backgroundColor: Colors.white,
                    radius: 25.0,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(child: buildCard(icon:Icons.fiber_pin,titype: TextInputType.number,htext: 'Quantity',mdata:data)),
                  Expanded(child: buildCard(icon:Icons.monetization_on,titype: TextInputType.number,htext: 'Price',mdata:data)),
                ],
              ),
              Row(
                children: <Widget>[
                  buildCard(icon:Icons.line_weight,titype: TextInputType.number,htext: 'Remaining Quantity',mdata:data),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(child: prefix.buildButton(context, Icons.insert_drive_file, 'Add Certificate')),
                  Expanded(child: Text('Certificate Name'))
                ],
              ),


              Row(
                children: <Widget>[
                  Wrap(
                    children: <Widget>[
                      Container(
                        width: data.size.width*0.97,
                        //height: 65.0,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.location_on,
                                  color: primarycolor,
                                ),
                                SizedBox(width: 10.0),
                                Expanded(
                                  child: Text(
                                    'Enter Location',
                                    style: TextStyle(
                                      color: primarycolor,
                                      fontSize: 17.0,
                                    ),
                                    textAlign: TextAlign.center,
                                    //overflow: TextOverflow.clip,
                                    //maxLines: 5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],

                  ),
                ],
              ),
              SizedBox(
                height: 50.0,
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
                  onPressed: () {
                    _showMyDialog(context);
                  },
                  child: Text(
                    "Post Offer",
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
    );
  }
}

