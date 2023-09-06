import 'package:imc/classes/pessoa.dart';
import 'package:imc/imc.dart' as imc;
import 'dart:io';

void main(List<String> arguments) {
  Pessoa p1 = Pessoa();

  //String? input2;

  print("Qual o seu nome?");
  String? input = stdin.readLineSync(); 
  p1.setNome(input!);
  print("Qual o seu peso?");
  input = stdin.readLineSync(); 
  p1.setPeso(double.parse(input!));
  print("Qual a sua altura?");
  input = stdin.readLineSync(); 
  p1.setAltura(double.parse(input!));

  p1.calculo();

}
