import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Expenses Planner'),
      ),
      body: Column(
        children: const <Widget>[
          SizedBox(
            width: double.infinity,
            height: 60,
            child: Card(
              child: Center(
                child: Text(
                  'Chart',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              margin: EdgeInsets.all(10),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: Card(
              child: Center(
                child: Text(
                  'List',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              margin: EdgeInsets.all(10),
            ),
          )
        ],
      ),
    );
  }
}
