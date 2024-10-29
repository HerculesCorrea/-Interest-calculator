import 'package:flutter/material.dart';

import '../views/resultado.dart';
import '../views/jurossimples.dart';
import '../views/juroscompostos.dart';
import '../views/tela_principal.dart';

class Rotas {
  static Map<String, Widget Function(BuildContext)> carregar() {
    return {
      '/jurossimples': (context) => const JurosSimples(),
      '/juroscompostos': (context) => const JurosCompostos(),
      '/resultado': (context) => const Resultado(),
      '/principal': (context) => const CalcJuros(title: "Calculadora de Juros"),
    };
  }

  static void Function() call(BuildContext context, String rota) {
    return () {
      Navigator.pushNamed(context, rota);
    };
  }

  static void pushNamed(BuildContext context, String rota,
      [Object data = Object]) {
    Navigator.pushNamed(context, rota, arguments: data);
  }

  static void pop(BuildContext context) {
    Navigator.pop(context);
  }
}
