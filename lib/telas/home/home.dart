import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _construirHome();
  }

  Widget _construirHome() {
    return Scaffold(
      body: _construirCard(),
      appBar: _construirAppBar(),
    );
  }

  Widget _construirCard() {
    return SizedBox(
      height: 300,
      child: Card(
          margin: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Stack(
                children: [
                  _construirImagemCard(),
                  _construirTextoCard(),
                ],
              )
            ],
          )),
    );
  }

  Widget _construirTextoCard() {
    return Positioned(
      child: Text(
        'Lancho',
        style: TextStyle(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      bottom: 10,
      left: 10,
    );
  }

  Widget _construirImagemCard() {
    return Image.network(
      'https://i2.wp.com/mercadoeconsumo.com.br/wp-content/uploads/2019/04/Que-comida-saud%C3%A1vel-que-nada-brasileiro-gosta-de-fast-food.jpg?fit=1600%2C1067&ssl=1',
      fit: BoxFit.fill,
      height: 268,
    );
  }

  Widget _construirAppBar() {
    return AppBar(
      title: Text('Cozinhando em Casa'),
    );
  }
}
