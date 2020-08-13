import 'package:flutter/material.dart';

class CustomDialog extends StatefulWidget {
  @override
  _CustomDialogState createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  @override
  Widget build(BuildContext context) {

    const Color primarycolor=Color(0xFF739b21);
    final data=MediaQuery.of(context);

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: Stack(
        children: <Widget>[
          Container(
            width: data.size.width*0.9,
            height: data.size.height*0.3,
            margin: EdgeInsets.only(top: 40.0),
            decoration: new BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  offset: const Offset(0.0, 10.0),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,// To make the card compact
              children: <Widget>[
                Text(
                  'Thank You',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700,
                    color: primarycolor,
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  'You order placed sucessfully !',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: primarycolor
                  ),
                ),
                SizedBox(height: 24.0),
              ],
            ),
          ),
          Positioned(
            left: 100,
            child: ClipOval(
              child: Material(
                color: primarycolor, // button color
                child: InkWell(
                  // inkwell color
                  child: SizedBox(
                      width: 80,
                      height: 80,
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 40,
                      ),
                  ),

                ),
              ),
            ),
          ),
          Positioned(
            left: 110,
            top: 190,
            child: ClipOval(
              child: Material(
                color: primarycolor, // button color
                child: InkWell(
                  // inkwell color
                  child: SizedBox(
                    width: 60,
                    height: 60,
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
              ),
            ),
          ),
          /*Positioned(
            left: 110,
            top: 190,
            child: CircleAvatar(
              backgroundColor: primarycolor,
              backgroundImage: AssetImage('assets/images/cotton3.png'),
              radius: 30.0,
            ),
          )*/
        ],
      ),
    );
  }
}
