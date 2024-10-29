import 'dart:math';

class Juros {
  num? _capital;
  num? _taxa;
  num? _tempo;
  num? _juros;
  num? _montante;
  num? _taxaFinal;

  String? _regime;

  get capital {
    return _capital?.toStringAsFixed(2);
  }

  get taxa {
    return _taxa;
  }

  get tempo {
    return _tempo;
  }

  get juros {
    return _juros?.toStringAsFixed(2);
  }

  get regime {
    return _regime;
  }

  get montante {
    return _montante;
  }

  get taxaFinal{
    return _taxaFinal;
  }

  Juros.simples({capital = 0, tempo = 0, taxa = 0}) {
    _capital = capital;
    _tempo = tempo;
    _taxa = taxa;
    _regime = "Simples";
    _taxaFinal = _taxa! / 100;
    _juros = _capital! * _tempo! * _taxaFinal!;
    _montante = _capital! + _juros!;
  }

  Juros.compostos({capital = 0, tempo = 0, taxa = 0}) {
    _capital = capital;
    _tempo = tempo;
    _taxa = taxa;
    _taxaFinal = _taxa! / 100;
    _regime = "Composto";
    _montante = (_capital! * pow(1 + _taxaFinal!, _tempo!));
    _juros = _montante! - _capital!;
  }
}
