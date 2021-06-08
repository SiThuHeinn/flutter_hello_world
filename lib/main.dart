import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello World Flutter App"),
          backgroundColor: Colors.deepPurple,
        ),
        body: Builder(
            builder: (context) => SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Center(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              'Hello Flutter!',
                              style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[800]),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              'Let\'s Discover',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Image.network(
                              'https://images.freeimages.com/images/large-previews/eaa/the-beach-1464354.jpg',
                              height: 350,
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: ElevatedButton(
                                child: Text('Contact Us'),
                                onPressed: () => contactUs(context),
                              )),
                        ],
                      ),
                    ),
                  ),
                )),
      ),
    );
  }

  void contactUs(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Contact Us'),
            content: Text('Mail us at hello@world.com'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Close'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Agree'),
              )
            ],
          );
        });
  }
}
