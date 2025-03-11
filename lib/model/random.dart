import 'dart:math';

class Sorteio {
  List<int> numeros = [0,1,2,3,4,5,6,7,8,9,10];

  int sortear() {
    Random random = Random();
    int numeroSorteado = random.nextInt(numeros.length);
    return numeros[numeroSorteado];
  }
}

void main(List<String> args) {
  Sorteio sorteio = Sorteio();
  print(sorteio.sortear());
}



