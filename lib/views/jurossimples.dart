import 'package:flutter/material.dart';

import '../models/juros.dart';
import '../routes/Rotas.dart';

class JurosSimples extends StatefulWidget {
  const JurosSimples({super.key});

  @override
  State<JurosSimples> createState() => _JurosSimplesState();
}

class _JurosSimplesState extends State<JurosSimples> {
  TextEditingController controllerCapital = TextEditingController();
  TextEditingController controllerTaxa = TextEditingController();
  TextEditingController controllerTempo = TextEditingController();

  void _calcularJurosSimples() {
    num capital = num.tryParse(controllerCapital.text) ?? 0.0;
    num taxa = num.tryParse(controllerTaxa.text) ?? 0.0;
    num tempo = num.tryParse(controllerTempo.text) ?? 0.0;
    Juros juros = Juros.simples(capital: capital, taxa: taxa, tempo: tempo);
    Rotas.pushNamed(context, '/resultado', juros);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Juros Simples"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
        color: Color(0xFFdfdfdf),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: "Entre com o capital: ",
              ),
              controller: controllerCapital,
            ),
        ),
      ),
            
            SizedBox(height: 10),

            Card(
       color: Color(0xFFdfdfdf),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: "Entre com o taxa: ",
              ),
              controller: controllerTaxa,
            ),
        ),
      ),
            
            SizedBox(height: 10),

            Card(
        color: Color(0xFFdfdfdf),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: "Entre com o tempo: ",
              ),
              controller: controllerTempo,
            ),
        ),
      ),

            SizedBox(height: 35),
            
            ElevatedButton(
                onPressed: _calcularJurosSimples, 
                child: const Text("Calcular"))
          ],
        ),
      ),
    );
  }
}
