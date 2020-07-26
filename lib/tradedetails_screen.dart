import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';



class TradeDetails extends StatefulWidget {
  @override
  _TradeDetailsState createState() => _TradeDetailsState();
}

const Color primarycolor=Color(0xFF739b21);


class _TradeDetailsState extends State<TradeDetails> {
  @override
  Widget build(BuildContext context) {

    final data=MediaQuery.of(context);

    return Scaffold(

        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
          title: Text("Trade Details"),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: data.size.height*0.2,
                width: data.size.width*0.9,
                child: Card(
                  child: Row(
                   children: <Widget>[
                     Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         CircleAvatar(
                           backgroundImage: AssetImage('assets/images/logo.png'),
                           backgroundColor: Colors.white,
                           radius: 35.0,
                         )
                       ],
                     ),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         
                         Text(
                           'CASTOR OIL',
                           style: TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold),
                         ),
                         Text(
                           'Jaypur, Rajasthan',
                           style: TextStyle(color: Colors.black,fontSize: 12.0,fontWeight: FontWeight.bold),
                         ),
                         Text(
                           'Deleivery charges',
                           style: TextStyle(color: Colors.black,fontSize: 12.0,fontWeight: FontWeight.bold),
                         )
                       ],
                     ),
                     Column(
                       children: <Widget>[
                         Text(
                           '9677',
                           style: TextStyle(color: Colors.black,fontSize: 12.0,fontWeight: FontWeight.bold),
                         ),
                       ],
                     ),
                   ],
                  ),
                ),
              ),
              Card(
                color: Colors.grey,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '450 QTL',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Rs.3000/QTL',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '450/QTL',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Availble Qty',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Offer',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Total Qty',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Card(

                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        RaisedButton.icon(
                            onPressed: null,
                            icon: Icon(
                                Icons.monetization_on,
                                color: Colors.black,
                            ),
                            label: Text(
                              'Price per QTL',
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.black,fontSize: 11.0),
                            ),
                          disabledColor: Colors.white,
                        ),
                        SizedBox(width: 2.0,),
                        RaisedButton.icon(
                          onPressed: null,
                          icon: Icon(
                            Icons.high_quality,
                            color: Colors.black,
                          ),
                          label: Text(
                            'Quality',
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.black,fontSize: 11.0),
                          ),
                          disabledColor: Colors.white,
                        ),
                        SizedBox(width: 2.0,),
                        RaisedButton.icon(
                          onPressed: null,
                          icon: Icon(
                            Icons.timer,
                            color: Colors.black,
                          ),
                          label: Text(
                            'Valid(Days)',
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.black,fontSize: 11.0),
                          ),
                          disabledColor: Colors.white,
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: RaisedButton(
                            child: Text(
                              'Send Offer',
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.black,fontSize: 11.0),
                            ),
                            disabledColor: Colors.white,
                          ),
                        ),

                      ],
                    ),
                  ],
                ),

                color: primarycolor,
              ),
            ],
          ),
        ),
    );
  }
}








