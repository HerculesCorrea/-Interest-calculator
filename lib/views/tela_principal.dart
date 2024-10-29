import 'package:flutter/material.dart';

import '../routes/Rotas.dart';

class CalculadoraJuros extends StatelessWidget {
  const CalculadoraJuros({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de Juros',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CalcJuros(title: 'Calculadora de Juros'),
      routes: Rotas.carregar(),
    );
  }
}

class CalcJuros extends StatefulWidget {
  const CalcJuros({super.key, required this.title});
  final String title;

  @override
  State<CalcJuros> createState() => _CalcJurosState();
}

class _CalcJurosState extends State<CalcJuros> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: Rotas.call(context, '/jurossimples'),
                child: const Text("Juros Simples")),

            SizedBox(height: 100), // Espaço de 20 pixels entre os botões

            ElevatedButton(
                onPressed: Rotas.call(context, '/juroscompostos'),
                child: const Text("Juros Compostos"))
          ],
        ),
      ),
    );
  }
}
