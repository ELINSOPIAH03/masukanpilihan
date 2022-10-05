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
  int? selected = -1;

  void onChange(int? value) {
    setState(() {
      this.selected = value;
    });
    print('Pilihan : ${this.selected}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kelas Radio'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Text('Jenis Kelamin'),
            Row(
              children: <Widget>[
                Radio(
                  value: 0,
                  groupValue: this.selected,
                  onChanged: (int? value) {
                    onChange(value);
                  }),
                Container(
                  width: 10,
                ),
                Text('Laki-Laki ')
              ],
            ),
            Row(
              children: <Widget>[
                Radio(
                  value: 1,
                  groupValue: this.selected,
                  onChanged: (int? value) {
                    onChange(value);
                  }),
                Container(
                  width: 10,
                ),
                Text('Perempuan ')
              ],
            )
          ],
        ),
      ),
    );
  }
}
