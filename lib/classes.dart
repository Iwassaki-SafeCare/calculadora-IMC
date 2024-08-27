class Pessoa {
  String _nome = "";
  double? _peso = 0.0;
  double? _altura = 0.0;

  Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double? getPeso() {
    return _peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double? getAltura() {
    return _altura;
  }

  @override
  String toString() {
    return {
      "Nome": _nome,
      "Peso": _peso,
      "Altura": _altura
    }.toString();
  }

 static String calcularIMC(double peso, double altura) {
  if (peso <= 0 || altura <= 0) {
    throw ArgumentError("O valor não pode ser zero");
  } 
    var imc = peso / ((altura * altura));
    return getIMC(imc);
}

static String getIMC(double imc) {
      if (imc < 18.6){
        return "Abaixo do peso";
      } else if (imc < 25.0) {
        return "Peso ideal";
      }
      else if (imc < 30.0){
        return "Levemente acima do peso";
      }
      else if (imc < 35.0){
        return "Obesidade Grau I";
      }
      else if (imc < 40.0){
        return "Obesidade Grau II";
      }
      else {
        return "Obesidade Grau III";
      }
}
}