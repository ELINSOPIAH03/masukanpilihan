import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home());
  }
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  String name = "";
  String text = "";

  void onPressed() {
    setState(() {
      if (this.name.trim().length == 0) return;
      this.text = 'Hallo ' + this.name + ', apa kabar?';
    });
  }

  void onChange(String value) {
    setState(() {
      this.name = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kelas TextField'),
      ),
      body: Column(
        children: <Widget>[
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: TextField(
              onChanged: (String value) {
              onChange(value);
            },
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter your username',
              ),
            ),
          ),
          ElevatedButton(
            child: Text('Klik'),
            onPressed: () {
              onPressed();
            },
            // style: ElevatedButton.styleFrom({}),
          ),
          Container(
            height: 15,
            width: 120.0,
          ),
          Text(this.text),
        ],
      ),
    );
  }
}
