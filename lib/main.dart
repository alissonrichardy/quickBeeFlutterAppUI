import 'package:appbeautiful/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(QuickBee());

class QuickBee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quick Bee',
      //theme: ThemeData(fontFamily: 'Roboto'),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Stack(
              alignment: Alignment.center,
              children: <Widget>[
                new Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(50.0),
                    color: Color(0xFF18D191) //0XFF + color
                  ),
                  child: new Icon(Icons.local_offer, color: Colors.white,),
                ),
                new Container(
                  margin: new EdgeInsets.only(right: 50.0, top: 50.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Color(0XFFFC6A7F)
                  ),
                  child: new Icon(Icons.home, color: Colors.white,),
                ),
                new Container(
                  margin: new EdgeInsets.only(left: 30.0, top: 50.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Color(0xFFFFCE56)
                  ),
                  child: new Icon(Icons.local_car_wash, color: Colors.white,),
                ),
                new Container(
                  margin: new EdgeInsets.only(left: 90.0, top: 40.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Color(0xFF45E0EC)
                  ),
                  child: new Icon(Icons.place, color: Colors.white,),
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 80.0),
                  child: new Text("Quick Bee", style: new TextStyle(fontSize: 30.0)),
                )
              ],
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 10.0, top: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                      },
                      child: new Container(
                        height: 60.0,
                        decoration: new BoxDecoration(
                            color: Color(0xFF18D191), borderRadius: new BorderRadius.circular(10.0),
                        ),
                        alignment: Alignment.center,
                        child: new Text("Sign In With Email", style: new TextStyle(fontSize: 20.0, color: Colors.white),),
                      ),
                    ),
                  ),
                )
              ],
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 0.0, top: 10.0),
                    child: new Container(
                      height: 60.0,
                      decoration: new BoxDecoration(
                        color: Color(0xFF4364A1), borderRadius: new BorderRadius.circular(10.0),
                      ),
                      alignment: Alignment.center,
                      child: new Text("Facebook", style: new TextStyle(fontSize: 20.0, color: Colors.white),),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                    child: new Container(
                      height: 60.0,
                      decoration: new BoxDecoration(
                        color: Color(0xFFDF513B), borderRadius: new BorderRadius.circular(10.0),
                      ),
                      alignment: Alignment.center,
                      child: new Text("Google", style: new TextStyle(fontSize: 20.0, color: Colors.white),),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

