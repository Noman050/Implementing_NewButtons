import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void dataHandling() => print('This is raised Button');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Old Buttons vs New Buttons'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.green, onPrimary: Colors.white),
                onPressed: () {
                  print('Elevated Button has pressed');
                },
                child: Text('ElevatedButton'),
              ),
              TextButton(
                onPressed: () {
                  print('TextButton is Pressed');
                },
                style: TextButton.styleFrom(primary: Colors.green),
                child: Text('TextButton'),
              ),
              OutlineButton(
                child: Text('Outlined Button'),
                textColor: Colors.green,
                borderSide: BorderSide(color: Colors.orange),
                onPressed: () => print('Outlined Button Is Pressed'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
