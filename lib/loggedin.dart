import 'package:flutter/material.dart';
class LoggedIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Delivery Buddy"),
      ),
      body: Center(
        child: 
        Column(
                            children: [
                             Image .asset('assets/verfied.jpeg'),
                              Text(
                  'Account Verfied',
                ),
                ElevatedButton(
          onPressed: () {
            // Navigate back to the first screen by popping the current route
            // off the stack.
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        )
                            ]
                          ),
      ),
    );
  }
}