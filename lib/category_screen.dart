import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


const Color pcolor=Color(0xFF739b21);

GestureDetector categoryButton(AssetImage image){
  return GestureDetector(
    child: Card(
      shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(55.0)
      ),
      child: CircleAvatar(
        backgroundImage: image,
        backgroundColor: Colors.white,
        radius: 55.0,
      ),
    ),
    onTap: (){},
  );
}

/*Text categotyText(String text){
  return  Text(
    text,
    style: TextStyle(
      color: pcolor,
      fontSize: 22.0,
    ),
  );
}*/

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    final data=MediaQuery.of(context);
    const Color primarycolor=Color(0xFF739b21);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Container(
            height: data.size.height,
            width: data.size.width,
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    categoryButton(AssetImage('assets/images/castor3.png')),
                    Text(
                    'Costor',
                    style: TextStyle(
                    color: pcolor,
                    fontSize: 20.0,
                  ),
                ),
                      SizedBox(height: 15.0),
                    categoryButton(AssetImage('assets/images/Ground Nut3.png')),
                    Text(
                      'Ground Nut',
                      style: TextStyle(
                        color: pcolor,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(height: 15.0),
                    categoryButton(AssetImage('assets/images/cotton3.png')),
                    Text(
                      'Cotton',
                      style: TextStyle(
                        color: pcolor,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(height: 15.0),
                    categoryButton(AssetImage('assets/images/maize3.png')),
                    Text(
                      'Maize',
                      style: TextStyle(
                        color: pcolor,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
