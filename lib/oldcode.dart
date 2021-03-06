import 'package:flutter/material.dart';
import 'package:flutter_cicd/rest_api.dart';
import 'package:flutter_cicd/first_screen.dart';

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
        primarySwatch: Colors.blue,
      ),
      //home: MyHomePage(title: 'Delivery Buddy'),
      initialRoute: '/',
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          '/': (context) => FirstScreen(),
          // When navigating to the "/second" route, build the SecondScreen widget.
          '/second': (context) => FirstScreen(),
        },
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

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: FutureBuilder(
       future: ApiService.getEmployees(),
       builder: (context, AsyncSnapshot snapshot) {
         final deliveryPersonData = snapshot.hasData ? snapshot.data['args'] : {};
         print('deliveryPersonData');
         print(deliveryPersonData['name']);
         //print(snapshot);
         if (snapshot.connectionState == ConnectionState.done) {
           return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child:  TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Name',
                        ),
                      )),
                    Padding(
                    padding: EdgeInsets.all(16.0),
                    child:  TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                        ),
                      )),
                    Padding(
                    padding: EdgeInsets.all(16.0),
                    child:  TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                      )),
                    Row( children: [Padding(padding: EdgeInsets.all(16.0),
                    child: FloatingActionButton.extended(
                      elevation: 1.0,
                      heroTag: "2",
                      onPressed: () {
                        
                      },
                      label: Text("   JOIN   "))),
                      Padding(padding: EdgeInsets.all(16.0),
                    child: FloatingActionButton.extended(
                      elevation: 1.0,
                      heroTag: "2",
                      onPressed: () {
                        
                      },
                      label: Text("   Login   ")))
                      ]),
                          Text(
                            deliveryPersonData['name'],
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          Column(
                            children: [
                             Image .asset('assets/delivery.jpg'),
                              Text(
                  'Request has been sent',
                )
                            ]
                          )
                        ],
              ),
            );
          }
         return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
                Text(
                  'You have pushed the button this many times:',
                )
              ],
            ),
          );
        }
    ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
