import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delivery Buddy'),
      ),
      body: SingleChildScrollView(
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
                    child: ElevatedButton(
          child: Text('Join'),
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, '/second');
          },
        )),
                      Padding(padding: EdgeInsets.all(16.0),
                    child: ElevatedButton(
          child: Text('Login'),
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, '/third');
          },
        ))
                      ]),]))
    );
  }
}


