import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ManageRequest extends StatefulWidget {
  @override
  _ManageRequestState createState() => _ManageRequestState();
}

class _ManageRequestState extends State<ManageRequest> {
  @override
  Widget build(BuildContext context) {

    final data=MediaQuery.of(context);
    const Color primarycolor=Color(0xFF739b21);

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text("Manage Requests"),
      ),
      backgroundColor: Colors.white,
      body: Container(
        width: data.size.width,
        height:100.0,
        child: Card(
          child: Row(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage:AssetImage('assets/images/cotton3.png'),
                    backgroundColor: Colors.white,
                    radius: 38.0,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'CASTOR OIL',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Jaypur, Rajasthan',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.line_weight,color: primarycolor,),
                                Text(
                                  '450 QTL',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.monetization_on,color: primarycolor,),
                              Text(
                                '450 QTL',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('9678'),
                        ],
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0),
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              ClipOval(
                                child: Material(
                                  color: primarycolor, // button color
                                  child: InkWell(
                                    splashColor: Colors.grey, // inkwell color
                                    child: SizedBox(width: 40, height: 40, child: Icon(Icons.check,color: Colors
                                        .white,)),
                                    onTap: () {},
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.0),
                          Column(
                            children: <Widget>[
                              ClipOval(
                                child: Material(
                                  color: primarycolor, // button color
                                  child: InkWell(
                                    splashColor: Colors.grey, // inkwell color
                                    child: SizedBox(width: 40, height: 40, child: Icon(Icons.close,color: Colors
                                      .white,)),
                                    onTap: () {},
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0)
          ),
        ),
      ),
    );
  }
}
