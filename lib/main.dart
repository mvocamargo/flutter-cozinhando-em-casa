import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        body: SizedBox(
          height: 300,
          child: Card(
              margin: EdgeInsets.all(16),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: [
                      Image.network(
                        'https://i2.wp.com/mercadoeconsumo.com.br/wp-content/uploads/2019/04/Que-comida-saud%C3%A1vel-que-nada-brasileiro-gosta-de-fast-food.jpg?fit=1600%2C1067&ssl=1',
                        fit: BoxFit.fill,
                        height: 268,
                      ),
                      Positioned(
                        child: Text(
                          'Lancho',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        bottom: 10,
                        left: 10,
                      ),
                    ],
                  )
                ],
              )),
        ),
        appBar: AppBar(
          title: Text('Cozinhando em Casa'),
        ),
      ),
    );
  }
}
