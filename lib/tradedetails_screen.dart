import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Row firstCardInnerRow(String text){
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,

    children: <Widget>[
      Text(
        text,
        style: TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold),
      ),
    ],
  );
}


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
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: data.size.height*0.3,
                  width: data.size.width,
                  child: Card(
                    child: Row(
                     children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: <Widget>[
                             CircleAvatar(
                               backgroundImage: AssetImage('assets/images/logo.png'),
                               backgroundColor: Colors.grey[200],
                               radius: 35.0,
                             )
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[

                             firstCardInnerRow('CASTOR OIL'),
                             SizedBox(height: 20.0,),
                             firstCardInnerRow('Location'),
                             SizedBox(height: 20.0,),
                             firstCardInnerRow('Delievry Charges'),
                             SizedBox(height: 20.0,),
                             firstCardInnerRow('Packaging Charges'),
                             SizedBox(height: 20.0,),
                             firstCardInnerRow('Transaction Charges'),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Container(
                           child: Align(
                             alignment: Alignment.topRight,
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               crossAxisAlignment: CrossAxisAlignment.end,
                               children: <Widget>[
                                 firstCardInnerRow('9677'),
                                 SizedBox(height: 20.0,),
                                  firstCardInnerRow('Jaypur,Raj.'),
                                 SizedBox(height: 20.0,),
                                  firstCardInnerRow('xxxxxx'),
                                 SizedBox(height: 20.0,),
                                  firstCardInnerRow('xxxxxx'),
                                 SizedBox(height: 20.0,),
                                  firstCardInnerRow('xxxxxx'),
                               ],
                             ),
                           ),
                         ),
                       ),
                     ],
                    ),
                    shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0)
                    ),
                    color: Colors.grey[200],
                  ),
                ),
                Container(

                  height: data.size.height*0.1,
                  width: data.size.width,
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.only(left: data.size.width/15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.line_weight,color: primarycolor,size: 20.0,),
                                      Text(
                                        '450 QTL',
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        'Available Qty',
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.monetization_on,color: primarycolor,size: 20.0,),
                                      Text(
                                        'Rs. 3000/QTL',
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        'Offer',
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.line_weight,color: primarycolor,size: 20.0,),
                                      Text(
                                        '450 QTL',
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
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
                          ),
                        ],
                      ),
                    ),
                    shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0)
                    ),
                    color: Colors.grey[200],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                        'assets/images/demo.jpg',
                        width: data.size.width,
                    ),

                  ),
                ),

                Container(
                  height: data.size.height*0.2,
                  width: data.size.width,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: RaisedButton(
                                  child: Text(
                                    'Send Offer',
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(color: Colors.black,fontSize: 14.0),
                                  ),
                                  disabledColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0)
                                  ),
                                  elevation: 25.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    color: primarycolor,
                    shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0)
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

