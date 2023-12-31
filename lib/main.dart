import 'package:flutter/material.dart';

void main() { runApp(MyApp()); }
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final List massages = [
    'https://krasnodar.stores-apple.com/blog/P1054788s-scaled.jpg',
    'https://krasnodar.stores-apple.com/blog/P1054788s-scaled.jpg',
    'https://krasnodar.stores-apple.com/blog/P1054788s-scaled.jpg',
    'https://krasnodar.stores-apple.com/blog/P1054788s-scaled.jpg',
    'https://krasnodar.stores-apple.com/blog/P1054788s-scaled.jpg',
    'https://krasnodar.stores-apple.com/blog/P1054788s-scaled.jpg',
    'https://krasnodar.stores-apple.com/blog/P1054788s-scaled.jpg',
    'https://krasnodar.stores-apple.com/blog/P1054788s-scaled.jpg',
    'https://krasnodar.stores-apple.com/blog/P1054788s-scaled.jpg',
    'https://krasnodar.stores-apple.com/blog/P1054788s-scaled.jpg',

  ];

  final List Rimlin = [
    'AirPods PRO',
    'AirPods PRO',
    'AirPods PRO',
    'AirPods PRO',
    'AirPods PRO',
    'AirPods PRO',
    'AirPods PRO',
    'AirPods PRO',
    'AirPods PRO',
    'AirPods PRO',
  ];

  final List Price = [
    '123 ₽',
        '1223 ₽',
        '434 ₽',
        '25234 ₽',
        '345 ₽',
        '234 ₽',
        '45678 ₽',
        '2354 ₽',
        '4545 ₽',
        '3234 ₽',

  ];

  @override

  Widget build(BuildContext context) {
    const title = 'WildBerries';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.purple,
          title: const Text(title),
        ),
        body: Padding(
    padding: const EdgeInsets.all(8),
            child: GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    crossAxisSpacing: 2,
    mainAxisSpacing: 3,
    ),
            itemCount: massages.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    flex: 1,
                  child: Image(image: NetworkImage('${massages[index]}')
                  )),
              Flexible(
              flex: 1,
                 child: Text('${Rimlin[index]}', style: TextStyle(color: Colors.black, fontSize: 20,),)),
                  Flexible(
                      flex: 1,
                      child: Text('${Price[index]}', style: TextStyle(color: Colors.black, fontSize: 20,),)),
                ],
              );
          },
        )),
    ));
  }
}

