void main() {
  Map restaurante = {
    "Nombre": "Pollos del norte",
    "estrellas": [5,4,3,4,2,10]
  };
  
  print(restaurante);
  
  if(restaurante["estrellas"] == null || restaurante["estrellas"].length == 0){
    print("El usuario no tiene estrellas");
  }else{
    final double promedio = (restaurante["estrellas"].reduce((int acum, int estrella) => acum + estrella))/restaurante["estrellas"].length;
    print("El promedio de estrellas es: $promedio");
    restaurante.addAll({"promedio": promedio});
  }
  print(restaurante);
}