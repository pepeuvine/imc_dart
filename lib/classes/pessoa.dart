import 'dart:ffi';

class Pessoa{
  String _nome = "";
  double _peso = 0;
  double _altura = 0;

 /* Pessoa(String nome, double peso, double altura){
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }
*/
  void setNome(String nome){
    _nome = nome;
  }

  String getNome(String nome){
    return _nome;
  }

    void setPeso(double peso){
    _peso = peso;
  }

  double getPeso(double peso){
    return _peso;
  }

    void setAltura(double altura){
    _altura = altura;
  }

  double getAltura(double altura){
    return _altura;
  }

  void calculo(){
    double altura = _altura;
    double peso = _peso;
    double imc = 0;
    
    try {

      imc = peso/(altura * altura);

      String imcConvert = imc.toStringAsFixed(1);
      String nome = _nome;
      String resposta = "$nome, seu imc é $imcConvert! Sua classificação é:";
      
      if(imc > 0){
        if(imc< 16){
          print("$resposta Magreza grave");
        } else if(imc >= 16 && imc < 17){
          print("$resposta Magreza moderada");
        } else if(imc >= 17 && imc < 18.5){
          print("$resposta Magreza leve");
        } else if(imc >= 18.5 && imc < 25){
          print("$resposta Saudável");
        } else if(imc >= 25 && imc < 30){
          print("$resposta Sobrepeso");
        } else if(imc >= 30 && imc < 35){
          print("$resposta Obesidade Grau I");
        } else if(imc >= 35 && imc < 40){
          print("$resposta Obesidade Grau II");
        } else {
          print("$resposta Obesidade Grau III");
        }
      } else{
        throw Exception();
      }

    } catch (e) {
      print("Não foi possível realizar o cálculo!");
    }
  }
}