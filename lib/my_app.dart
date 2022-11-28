import 'package:flutter/material.dart';

import 'package:flutter_flavor/flutter_flavor.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlavorBanner(
      color: FlavorConfig.instance.color,
      location: FlavorConfig.instance.location,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = FlavorConfig.instance.variables["counter"];
  final int _counterAdd = FlavorConfig.instance.variables["counter_add"];
  final String _message = FlavorConfig.instance.variables["message"];

  void _incrementCounter() {
    setState(() {
      _counter += _counterAdd;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_message),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
