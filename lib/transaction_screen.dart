import 'package:bazaar/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Text normalText(String text){
  return Text(
    text,
    style: TextStyle(
      fontSize: 18.0,
    ),
  );
}

Text largeText(String text){
  return Text(
    text,
    style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
  );
}



class Transaction extends StatefulWidget {
  @override
  _TransactionState createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {

  @override
  Widget build(BuildContext context) {

    final data=MediaQuery.of(context);
    const Color primarycolor=Color(0xFF739b21);
    const Color lightprimary=Color(0xFFc4d5a1);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    width: data.size.width,
                    height: data.size.height*0.25,
                    child: Card(
                      color: Colors.grey[200],
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      CircleAvatar(
                                        backgroundImage: AssetImage('assets/images/cotton3.png'),
                                        backgroundColor: Colors.white,
                                        radius: 45.0,
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      largeText('CASTOR OIL'),
                                      normalText('Jaypur, Rajasthan'),
                                      normalText('6175'),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: <Widget>[
                                Expanded(
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
                                            color: Colors.black,
                                          ),
                                          SizedBox(width: 10.0),
                                          Expanded(
                                            child: Text(
                                              'Deleivery Address',
                                              style: TextStyle(
                                                color: Colors.black,
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
                          ),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0)
                      ),
                    ),
                  ),
                  Container(
                    width: data.size.width,
                    height: data.size.height*0.3,
                    child: Card(
                      color: Colors.grey[200],
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  normalText('Delievry Charge : '),
                                  normalText('Transaction Charge : '),
                                  normalText('Package Charge : '),
                                  SizedBox(height: 15.0),
                                  largeText('Total Charge : '),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  normalText('xxxxxx'),
                                  normalText('xxxxxx'),
                                  normalText('xxxxxx'),
                                  SizedBox(height: 15.0),
                                  largeText('xxxxxx'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0)
                      ),
                    ),
                  ),
                  Container(
                    height: 55,
                    width: data.size.width,
                    child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: BorderSide(color: primarycolor)
                        ),
                        color: primarycolor,
                        textColor: Colors.white,
                        padding: EdgeInsets.all(8.0),
                        onPressed: () {},
                        child: largeText('Checkout')
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
