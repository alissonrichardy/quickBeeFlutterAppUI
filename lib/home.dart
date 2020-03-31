import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Color(0xFF29D091),
        currentIndex: _bottomNavIndex,
        onTap: (int index){
          setState(() {
            _bottomNavIndex = index;
          });
        },

        items: [
          new BottomNavigationBarItem(
            title: new Text(''),
            icon: new Icon(Icons.home)
          ),
          new BottomNavigationBarItem(
              title: new Text(''),
              icon: new Icon(Icons.local_offer)
          ),
          new BottomNavigationBarItem(
              title: new Text(''),
              icon: new Icon(Icons.message)
          ),
          new BottomNavigationBarItem(
              title: new Text(''),
              icon: new Icon(Icons.notifications)
          )

        ],
      ),
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Color(0XFF18D191)),
      ),
      body: MainContent(),
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: new Container(
            child: new Column(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Text(
                      'Explore',
                      style: new TextStyle(fontSize: 30.0),
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
                new SizedBox(
                  height: 15.0,
                ),
                new Row(
                  children: <Widget>[
                    new Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: new Container(
                      height: 100.0,
                      decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(5.0),
                            color: Color(0xFFFD7384)),
                      child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Icon(
                              Icons.drive_eta,
                              color: Colors.white,
                            ),
                            new Text(
                              "Motor",
                              style: new TextStyle(color: Colors.white),
                            )
                          ],
                      ),
                    ),
                        )),
                    new Expanded(
                        child: new Container(
                      height: 100.0,
                      child: new Column(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 2.5, right: 2.5),
                              child: new Container(
                                decoration: new BoxDecoration(
                                  color: Color(0xFF2BD093),
                                  borderRadius: new BorderRadius.circular(5.0)
                                ),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8.0),
                                      child: new Icon(Icons.local_offer, color: Colors.white,),
                                    ),
                                    new Text('Classifield', style: new TextStyle(color: Colors.white),)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 2.5, right: 2.5),
                              child: new Container(
                                decoration: new BoxDecoration(
                                    color: Color(0xFFFC7B4D),
                                    borderRadius: new BorderRadius.circular(5.0)
                                ),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8.0),
                                      child: new Icon(Icons.beenhere , color: Colors.white,),
                                    ),
                                    new Text('Service', style: new TextStyle(color: Colors.white),)
                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),

                    )),
                    new Expanded(
                        child: new Container(
                          height: 100.0,
                          child: new Column(
                            children: <Widget>[
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 2.5, bottom: 2.5),
                                  child: new Container(
                                    decoration: new BoxDecoration(
                                        color: Color(0xFF53CEDB),
                                        borderRadius: new BorderRadius.circular(5.0)
                                    ),
                                    child: new Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right: 8.0),
                                          child: new Icon(Icons.account_balance, color: Colors.white,),
                                        ),
                                        new Text('Properties', style: new TextStyle(color: Colors.white),)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 2.5, top: 2.5),
                                  child: new Container(
                                    decoration: new BoxDecoration(
                                        color: Color(0xFFF1B069),
                                        borderRadius: new BorderRadius.circular(5.0)
                                    ),
                                    child: new Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right: 8.0),
                                          child: new Icon(Icons.art_track , color: Colors.white,),
                                        ),
                                        new Text('Jobs', style: new TextStyle(color: Colors.white),)
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),

                        )),

                  ],
                ),
                new SizedBox(
                  height: 10.0,
                ),
                new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Text("Popular Treding", style: new TextStyle(fontSize: 18.0)),
                    ),
                    new Expanded(
                      child: new Text("View All", style: new TextStyle(color: Color(0xFF2BD093)), textAlign: TextAlign.end,),
                    )
                  ],
                ),
                new SizedBox(
                  height: 10.0,
                ),
                new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Container(
                        height: 150.0,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 100.0,
                              decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(5.0),
                                  image: new DecorationImage(
                                      image: new NetworkImage('https://www.howtogeek.com/wp-content/uploads/2016/01/steam-and-xbox-controllers.jpg'),
                                    fit: BoxFit.cover
                                  )
                              ),
                            ),
                            new Text("Play Station", style: new TextStyle(fontSize: 16.0), textAlign: TextAlign.center,),
                          ],
                        ),
                      ),
                    ),
                    new SizedBox(
                      width: 5.0,
                    ),
                    new Expanded(
                      child: new Container(
                        height: 150.0,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 100.0,
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  image: new DecorationImage(
                                      image: new NetworkImage('https://pawanjewellers.in/wp-content/uploads/2016/09/Jewellery-new.jpg'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            new Text("Jewellery and Watches", style: new TextStyle(fontSize: 16.0), textAlign: TextAlign.center,),
                          ],
                        ),
                      ),
                    ),
                    new SizedBox(
                      width: 5.0,
                    ),
                    new Expanded(
                      child: new Container(
                        height: 150.0,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 100.0,
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  image: new DecorationImage(
                                      image: new NetworkImage('http://images4.fanpop.com/image/photos/21600000/Electronics-hd-wallpaper-21627626-1920-1200.jpg'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            new Text("Electronics", style: new TextStyle(fontSize: 16.0), textAlign: TextAlign.center ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                // outra linha
                new SizedBox(
                  height: 10.0,
                ),
                new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Text("Popular Treding", style: new TextStyle(fontSize: 18.0)),
                    ),
                    new Expanded(
                      child: new Text("View All", style: new TextStyle(color: Color(0xFF2BD093)), textAlign: TextAlign.end,),
                    )
                  ],
                ),
                new SizedBox(
                  height: 10.0,
                ),
                new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Container(
                        height: 150.0,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 100.0,
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  image: new DecorationImage(
                                      image: new NetworkImage('https://www.howtogeek.com/wp-content/uploads/2016/01/steam-and-xbox-controllers.jpg'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            new Text("Play Station", style: new TextStyle(fontSize: 16.0), textAlign: TextAlign.center,),
                          ],
                        ),
                      ),
                    ),
                    new SizedBox(
                      width: 5.0,
                    ),
                    new Expanded(
                      child: new Container(
                        height: 150.0,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 100.0,
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  image: new DecorationImage(
                                      image: new NetworkImage('https://pawanjewellers.in/wp-content/uploads/2016/09/Jewellery-new.jpg'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            new Text("Jewellery and Watches", style: new TextStyle(fontSize: 16.0), textAlign: TextAlign.center,),
                          ],
                        ),
                      ),
                    ),
                    new SizedBox(
                      width: 5.0,
                    ),
                    new Expanded(
                      child: new Container(
                        height: 150.0,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 100.0,
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  image: new DecorationImage(
                                      image: new NetworkImage('http://images4.fanpop.com/image/photos/21600000/Electronics-hd-wallpaper-21627626-1920-1200.jpg'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            new Text("Electronics", style: new TextStyle(fontSize: 16.0), textAlign: TextAlign.center ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                // outra linha
                new SizedBox(
                  height: 10.0,
                ),
                new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Text("Popular Treding", style: new TextStyle(fontSize: 18.0)),
                    ),
                    new Expanded(
                      child: new Text("View All", style: new TextStyle(color: Color(0xFF2BD093)), textAlign: TextAlign.end,),
                    )
                  ],
                ),
                new SizedBox(
                  height: 10.0,
                ),
                new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Container(
                        height: 150.0,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 100.0,
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  image: new DecorationImage(
                                      image: new NetworkImage('https://www.howtogeek.com/wp-content/uploads/2016/01/steam-and-xbox-controllers.jpg'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            new Text("Play Station", style: new TextStyle(fontSize: 16.0), textAlign: TextAlign.center,),
                          ],
                        ),
                      ),
                    ),
                    new SizedBox(
                      width: 5.0,
                    ),
                    new Expanded(
                      child: new Container(
                        height: 150.0,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 100.0,
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  image: new DecorationImage(
                                      image: new NetworkImage('https://pawanjewellers.in/wp-content/uploads/2016/09/Jewellery-new.jpg'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            new Text("Jewellery and Watches", style: new TextStyle(fontSize: 16.0), textAlign: TextAlign.center,),
                          ],
                        ),
                      ),
                    ),
                    new SizedBox(
                      width: 5.0,
                    ),
                    new Expanded(
                      child: new Container(
                        height: 150.0,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 100.0,
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  image: new DecorationImage(
                                      image: new NetworkImage('http://images4.fanpop.com/image/photos/21600000/Electronics-hd-wallpaper-21627626-1920-1200.jpg'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            new Text("Electronics", style: new TextStyle(fontSize: 16.0), textAlign: TextAlign.center ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),

              ],
            ),
          ),
        )
      ],
    );
  }
}
