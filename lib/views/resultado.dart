import 'package:flutter/material.dart';

import '../models/juros.dart';
import '../routes/Rotas.dart';

class Resultado extends StatefulWidget {
  const Resultado({super.key});

  @override
  ResultadoState createState() => ResultadoState();
}

class ResultadoState extends State<Resultado> {
  void _onItemTapped(int index) {
    if (index == 0) {
      Rotas.pop(context);
    } else if (index == 1) {
      Rotas.call(context, "/principal")();
    }
  }

  @override
  Widget build(BuildContext context) {
    final Juros juros = ModalRoute.of(context)!.settings.arguments as Juros;

    final regime = juros.regime;
    final resultado = juros.juros;
    final montante = juros.montante;
    final taxa = juros.taxa;

    return MaterialApp(
      title: 'Juros $regime',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Juros $regime'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
        color: Color.fromARGB(255, 99, 167, 230),
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Text('Valor da taxa: $taxa'),
        ),
      ),

      Card(
        color: Color.fromARGB(255, 102, 236, 207),
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Text('Valor do Juros: $resultado'),
        ),
      ),
      Card(
        color: Color(0xFFe2ffc7),
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Text('Montante total: $montante'),
        ),
      ),
    ],
    
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 6, 193, 226),
          selectedItemColor: Colors.black,
          currentIndex: 1,
          selectedFontSize: 20,
          unselectedFontSize: 20,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.error, color: Colors.black),
              label: 'Corrigir',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black),
              label: 'Novo Cálculo',
            ),
          ],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
