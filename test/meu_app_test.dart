import 'package:meu_app/classes.dart' as user;
import 'package:test/test.dart';

void main() {
  test('Calcula o IMC do usuário (Abaixo do Peso)', () {
    expect(user.Pessoa.calcularIMC(40, 1.65),"Abaixo do peso");
 });
  test('Calcula o IMC do usuário (Peso ideal)', () {
    expect(user.Pessoa.calcularIMC(80, 1.80),"Peso ideal");
 });
  test('Calcula o IMC do usuário (Levemente acima do Peso)', () {
    expect(user.Pessoa.calcularIMC(75, 1.70),"Levemente acima do peso");
 });

  test('Calcula o IMC do usuário (Obesidade Grau I)', () {
    expect(user.Pessoa.calcularIMC(100, 1.75),"Obesidade Grau I");
 });

  test('Calcula o IMC do usuário (Obesidade Grau II)', () {
    expect(user.Pessoa.calcularIMC(125, 1.85),"Obesidade Grau II");
 });

  test('Calcula o IMC do usuário (Obesidade Grau III)', () {
    expect(user.Pessoa.calcularIMC(150, 1.60),"Obesidade Grau III");
 });
}

