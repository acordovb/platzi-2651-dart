void main() {
  const valor1 = 4;
  const valor2 = 5;
  List<int> valores = [2, 3, 4, 1];
  var resultado = 0;
  Opt operacion = Opt.producto;

  switch (operacion) {
    case Opt.suma:
      resultado = valor1 + valor2;
      break;
    case Opt.resta:
      resultado = valor1 - valor2;
      break;
    case Opt.multiplicacion:
      resultado = valor1 * valor2;
      break;
    case Opt.modulo:
      resultado = valor1 % valor2;
      break;
    case Opt.factorial:
      var factor = valor1;
      resultado = 1;
      while (factor >= 1) {
        resultado *= factor;
        factor--;
      }
      break;
    case Opt.sumatoria:
      resultado = 0;
      for (int num in valores) {
        resultado += num;
      }
      break;
    case Opt.producto:
      resultado = 1;
      for (int num in valores) {
        resultado *= num;
      }
      break;
  }
  
  print("El resultado de la operación es: $resultado");
  print("Platzi!!!");
}

enum Opt {
  suma,
  resta,
  multiplicacion,
  modulo,
  factorial,
  sumatoria,
  producto
}