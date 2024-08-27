import 'utils.dart';
import 'package:meu_app/classes.dart';
import 'package:meu_app/exception.dart';

void execute() {
  print("Bem vindo ao sistema de cálculo IMC!");
  String nome = ConsoleUtils.lerStringComTexto("Digite o seu nome:");
  double peso = ConsoleUtils.lerDoubleComTexto("Digite o seu peso:");
  double altura = ConsoleUtils.lerDoubleComTexto("Digite a sua altura:");

  
  try {
    if (nome.trim() == "") {
      throw NomeInvalidoException();
    } else {
      print(Pessoa.calcularIMC(peso, altura));
    }
  } on NomeInvalidoException {
    nome = "Nome Padrão";
    print(NomeInvalidoException);
    return;
  } catch (e) {
    print(e);
    return;
  }
}
