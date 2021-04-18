import 'package:cozinhando_casa/modelos/receita.dart';
import 'package:flutter/material.dart';

class Detalhes extends StatelessWidget {
  final Receita receita;

  const Detalhes({Key key, @required this.receita}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _construirDetalhes();
  }

  Widget _construirDetalhes() {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _construirImagesDetalhes(foto: receita.foto),
          _construirTituloDetalhes(titulo: receita.titulo),
          _construirLinhaIconesDetalhes(
            rendimento: '${receita.porcoes} porção(ões)',
            tempoPreparo: receita.tempoPreparo,
          ),
          _construirSubtituloDetalhes('Ingredientes'),
          _construirTextoDetalhes(receita.ingredientes),
          _construirSubtituloDetalhes('Preparo'),
          _construirTextoDetalhes(receita.modoPreparo),
        ],
      ),
      appBar: _construirAppBar(),
    );
  }

  Widget _construirImagesDetalhes({foto: 'assets/images/brigadeiro.jpg'}) {
    return Image.asset(foto);
  }

  Widget _construirTituloDetalhes({titulo: 'Brigadeiro'}) {
    return Center(
      child: Text(
        titulo,
        style: TextStyle(
          color: Colors.deepOrange,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _construirLinhaIconesDetalhes({
    rendimento: '30',
    tempoPreparo: '25 min',
  }) {
    return Row(
      children: [
        _construirColunaIconesDetalhes(Icons.restaurant, rendimento),
        _construirColunaIconesDetalhes(Icons.timer, tempoPreparo),
      ],
    );
  }

  Widget _construirColunaIconesDetalhes(icone, texto) {
    return Expanded(
      child: Column(
        children: [
          Icon(
            icone,
            color: Colors.deepOrange,
          ),
          Text(
            texto,
            style: TextStyle(
              color: Colors.deepOrange,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _construirSubtituloDetalhes(texto) {
    return Center(
      child: Text(
        texto,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _construirAppBar() {
    return AppBar(
      title: Text('Cozinhando em Casa'),
    );
  }

  _construirTextoDetalhes(texto) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Text(texto),
    );
  }
}
