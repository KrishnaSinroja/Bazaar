import 'package:bazaar/transaction_screen.dart';
import 'package:flutter/material.dart';
Container buildBreedButton(String text){
  return Container(
    width: 75.0,
    child: RaisedButton(
      color: primarycolor,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      onPressed: (){
      },
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0)
      ),
    ),
  );
}



class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

const Color primarycolor=Color(0xFF739b21);
const Color lightprimary=Color(0xFFc4d5a1);

class _FilterState extends State<Filter> {

  RangeValues _values =RangeValues(1,100);
  RangeLabels _labels=RangeLabels('1','100');

  @override
  Widget build(BuildContext context) {

    final data=MediaQuery.of(context);

    return Dialog(

      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0)
      ),
      child: Container(
        width: data.size.width,
        height: data.size.height*0.73,
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32.0)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                  'FILTER',
                  style: TextStyle(
                    color: primarycolor,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold
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
              Wrap(
                spacing: 10.0,
                children: <Widget>[
                  buildBreedButton('9797'),
                  buildBreedButton('9798'),
                  buildBreedButton('9799'),
                  buildBreedButton('9799'),
                  buildBreedButton('9799'),
                  buildBreedButton('9799'),
                  buildBreedButton('9799'),
                  buildBreedButton('9799'),
                  buildBreedButton('9799'),
                  buildBreedButton('9799'),
                  buildBreedButton('9799'),
                  buildBreedButton('9799'),
                ],

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 100,
                    child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0),
                            side: BorderSide(color: primarycolor)
                        ),
                        color: primarycolor,
                        textColor: Colors.white,
                        padding: EdgeInsets.all(8.0),
                        onPressed: () {Navigator.of(context).pop();},
                        child: largeText('Apply')
                    ),
                  ),


                  Container(
                    height: 50,
                    width: 100,
                    child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0),
                            side: BorderSide(color: primarycolor)
                        ),
                        color: primarycolor,
                        textColor: Colors.white,
                        padding: EdgeInsets.all(8.0),
                        onPressed: () {
                              Navigator.of(context).pop();
                        },
                        child: largeText('Remove')
                    ),
                  ),
                ],
              ),
            ],
          ),
          color: lightprimary,
        ),
      ),
    );
  }
}
