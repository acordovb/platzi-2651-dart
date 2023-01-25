void main() {
  Set restaurantes = {
    {
      "nombre": "El novillo alegre",
      "tipo": "Argentina",
      "calificaciones": [4, 5, 2, 1, 2]
    },
    {
      "nombre": "Baires Grill",
      "tipo": "Argentina",
      "calificaciones": [3, 1, 3, 5, 5, 2, 3]
    },
    {
      "nombre": "Mario Brothers",
      "tipo": "Italiana",
      "calificaciones": [4, 3, 2, 1, 1]
    },
    {
      "nombre": "Molto bene",
      "tipo": "Italiana",
      "calificaciones": [4, 3, 1, 1, 5]
    }
  };

  Map rating = {"Todos": []};
  Map<String, double> results = {};

  // Estamos asumiendo que son varios tipos de comida y varios restaurantes
  for (Map rest in restaurantes) {
    String typeFood = rest["tipo"];
    // Creamos el Key en caso de que no exista
    if (rating[typeFood] == null) {
      rating.addAll({typeFood: []});
    }
    // Anidamos todos los list de estrellas a las listas ya creadas
    rating[typeFood].addAll(rest["calificaciones"]);
    // Todas las calificaciones deben ser agregadas a una misma lista
    rating["Todos"].addAll(rest["calificaciones"]);
  }

  for (var entry in rating.entries) {
    double promedio = (entry.value.reduce((sum, test) => sum + test)) / entry.value.length;
    results[entry.key] = promedio;
  }
  print(results);
}
