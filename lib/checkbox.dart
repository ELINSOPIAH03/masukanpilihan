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
  final List<String> bahasa = ['Java', 'Sundanese', 'Ngapak'];
  bool? selected1 = false;
  bool? selected2 = false;
  bool? selected3 = false;
  List<int> list = [];

  void onChanged1(bool? value) {
    setState(() {
      this.selected1 = value;
    });
    if (value == true)
    list.add(0);
    else
    list.remove(0);
    print(list);
  } 

  void onChanged2(bool? value) {
    setState(() {
      this.selected2 = value;
    });  
    if (value == true)
    list.add(1);
    else
    list.remove(1);
    print(list);
  }

  void onChanged3(bool? value) {
    setState(() {
      this.selected3 = value;
    });
    if (value == true)
    list.add(2);
    else
    list.remove(2);
    print(list);
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Text('Bahasa yang dipilih : '),
            CheckboxListTile(
              value: this.selected1,
              onChanged: (bool?value){
                onChanged1(value);
              },
              title: Text(this.bahasa[0]),
              activeColor: Colors.black,
              secondary: Icon(Icons.language),
            ),
            CheckboxListTile(
              value: this.selected2,
              onChanged: (bool?value){
                onChanged2(value);
              },
              title: Text(this.bahasa[1]),
              activeColor: Colors.black,
              secondary: Icon(Icons.language),
            ),
            CheckboxListTile(
              value: this.selected3,
              onChanged: (bool?value){
                onChanged3(value);
              },
              title: Text(this.bahasa[2]),
              activeColor: Colors.black,
              secondary: Icon(Icons.language),
            ),
          ],
        ),
      ),
    );
  }
}
