import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.

        //TEST BRIGHTNESS
        //brightness: Brightness.dark, //This is the background like dark mode
        primarySwatch: Colors.blue,
        //TEST ACCENT COLOR
        accentColor: Colors.black,
      ),
      home: MyHomePage(title: 'Flutter Demo Start Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  //get element => null;

  //List changePlusSign() {
  List colorsList = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.pink,
    Colors.cyan,
    Colors.amber,
    Colors.deepOrange,
  ];

  var random = new Random();
  // var element = colorsList[random.nextInt(colorsList.length)];
  // print(element);
  //element = randomListItem(element);
  //}

  void colorNCount() {
    _incrementCounter();
  }

  // set color(Color color) {
  //   changePlusSign();
  // }

  void _incrementCounter() {
    setState(
      () {
        // This call to setState tells the Flutter framework that something has
        // changed in this State, which causes it to rerun the build method below
        // so that the display can reflect the updated values. If we changed
        // _counter without calling setState(), then the build method would not be
        // called again, and so nothing would appear to happen.
        // color = Color(0x00000000);
        _counter++;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    var element = colorsList[random.nextInt(colorsList.length)];
    print(element);
    return Container(
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: [Colors.purple, Colors.blue]),
        ),
        child: Scaffold(
          appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text(widget.title),
          ),
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: [Colors.purple, Colors.blue]),
            ),
            child: Container(
              child: SafeArea(
                child: Center(
                  // Center is a layout widget. It takes a single child and positions it
                  // in the middle of the parent.
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.green,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.green,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: new Card(
                                    shadowColor: Colors.blue,
                                    child: Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: Text('Row 1 Left'),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: Card(
                                    shadowColor: Colors.blue,
                                    child: Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: Text('Row 1 Middle'),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: Card(
                                    shadowColor: Colors.blue,
                                    child: Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: Text('Row 1 Right'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.green,
                              ),
                            ),
                            child: Wrap(
                              alignment: WrapAlignment.end,
                              spacing: 10.0,
                              runSpacing: 20.0,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: Card(
                                    shadowColor: Colors.pink,
                                    child: FlutterLogo(),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: Card(
                                    shadowColor: Colors.pink,
                                    child: FlutterLogo(),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: Card(
                                    shadowColor: Colors.pink,
                                    child: FlutterLogo(),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: Card(
                                    shadowColor: Colors.pink,
                                    child: FlutterLogo(),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: Card(
                                    shadowColor: Colors.pink,
                                    child: FlutterLogo(),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: Card(
                                    shadowColor: Colors.pink,
                                    child: FlutterLogo(),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: Card(
                                    shadowColor: Colors.pink,
                                    child: FlutterLogo(),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: Card(
                                    shadowColor: Colors.pink,
                                    child: FlutterLogo(),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: Card(
                                    shadowColor: Colors.pink,
                                    child: FlutterLogo(),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: Card(
                                    shadowColor: Colors.pink,
                                    child: FlutterLogo(),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: Card(
                                    shadowColor: Colors.pink,
                                    child: FlutterLogo(),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: Card(
                                    shadowColor: Colors.pink,
                                    child: FlutterLogo(),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: Card(
                                    shadowColor: Colors.pink,
                                    child: FlutterLogo(),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: Card(
                                    shadowColor: Colors.pink,
                                    child: FlutterLogo(),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: Card(
                                    shadowColor: Colors.pink,
                                    child: FlutterLogo(),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: Card(
                                    shadowColor: Colors.pink,
                                    child: FlutterLogo(),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: Card(
                                    shadowColor: Colors.pink,
                                    child: FlutterLogo(),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: Card(
                                    shadowColor: Colors.pink,
                                    child: FlutterLogo(),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: Card(
                                    shadowColor: Colors.pink,
                                    child: FlutterLogo(),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: Card(
                                    shadowColor: Colors.pink,
                                    child: FlutterLogo(),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: Card(
                                    shadowColor: Colors.pink,
                                    child: FlutterLogo(),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: Card(
                                    shadowColor: Colors.pink,
                                    child: FlutterLogo(),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: Card(
                                    shadowColor: Colors.pink,
                                    child: FlutterLogo(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.green,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: Card(
                                    shadowColor: Colors.pink,
                                    child: Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: Text('Row 2 Left'),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: Card(
                                    shadowColor: Colors.pink,
                                    child: Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: Text('Row 2 Middle'),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: Card(
                                    shadowColor: Colors.pink,
                                    child: Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: FlutterLogo(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.green,
                              ),
                            ),
                            child: Wrap(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: Card(
                                    shadowColor: Colors.pink,
                                    child: FlutterLogo(),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: Card(
                                    shadowColor: Colors.pink,
                                    child: FlutterLogo(),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: Card(
                                    shadowColor: Colors.pink,
                                    child: FlutterLogo(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.green,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              //shadowColor: Colors.pink,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: Card(
                                    child: Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: Text(
                                        '$_counter',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 150.0,
                                  width: 300.0,
                                  color: Colors.transparent,
                                  child: Container(
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              begin: Alignment.bottomRight,
                                              end: Alignment.topLeft,
                                              colors: [
                                                Colors.purple,
                                                Colors.blue
                                              ]),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0))),
                                      child: new Center(
                                        child: Opacity(
                                          opacity: .10,
                                          child: new Text(
                                            "Rounded Corner Rectangle Shape",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.green,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                  ),
                                  child: Card(
                                    child: Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: Text(
                                        'The rows are now equal in spacing',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          floatingActionButton: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: element,
              ),
            ),
            child: FloatingActionButton(
              onPressed: () => {element},
              tooltip: 'Increment if you want',
              child: new MediaQuery.removePadding(
                context: context,
                child: Icon(
                  Icons.add,
                  //CHANGE THE COLOR OF THE + SIGN
                  color: element,
                ),
              ),
            ),
          ),
        ),
      ),
    ); //);
    //);
    //,

    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
