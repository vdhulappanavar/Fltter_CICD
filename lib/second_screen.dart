import 'package:flutter/material.dart';
class SecondScreen extends StatelessWidget {
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
                             Image .asset('assets/delivery.jpg'),
                              Text(
                  'Request has been sent',
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