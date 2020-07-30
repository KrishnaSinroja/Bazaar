

import 'package:flutter/material.dart';
class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {

  RangeValues _values =RangeValues(1,100);
  RangeLabels _labels=RangeLabels('1','100');

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
            child: Container(
              width: data.size.width,
              height: data.size.height*0.4,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
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
                              Expanded(
                                child: Text(
                                  'Select Breed',
                                  style: TextStyle(
                                    color: primarycolor,
                                    fontSize: 17.0,
                                  ),
                                  textAlign: TextAlign.left,
                                  //overflow: TextOverflow.clip,
                                  //maxLines: 5,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
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
                              Expanded(
                                child: Text(
                                  'Price Range',
                                  style: TextStyle(
                                    color: primarycolor,
                                    fontSize: 17.0,
                                  ),
                                  textAlign: TextAlign.left,
                                  //overflow: TextOverflow.clip,
                                  //maxLines: 5,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 35),
                      child: RangeSlider(
                        min: 1,
                        max: 100,
                        divisions: 4,
                        labels: _labels,
                        activeColor: primarycolor,
                        values: _values,
                          onChanged: (RangeValues values) {
                            setState(() {
                              _values=values;
                              _labels=RangeLabels('${values.start.toString()}\ Rs','${values.end.toString()}\Rs');
                            });
                          }
                      ),
                    ),
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
                              Expanded(
                                child: Text(
                                  'Select Region',
                                  style: TextStyle(
                                    color: primarycolor,
                                    fontSize: 17.0,
                                  ),
                                  textAlign: TextAlign.left,
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
                color: lightprimary,
              ),
            ),
          ),

        ),
    );
  }
}
