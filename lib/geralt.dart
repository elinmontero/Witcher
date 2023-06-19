import 'package:appentertainment/personajes.dart';
import 'package:flutter/material.dart';

class Geralt extends StatelessWidget {
  const Geralt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
            "GERALD OF RIVIA",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color.fromARGB(255, 219, 17, 3),
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            SizedBox(
              height: 200,
              width: 100,
              child: Image.asset("assets/images/gerald.jpg"),
            ),
            const Divider(),
            const Text(
              "     Geralt de Rivia es un personaje de ficción perteneciente a la serie de novelas escritas por Andrzej Sapkowski, La Saga de Geralt de Rivia de la cual es protagonista.",
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
              textAlign: TextAlign.justify,
            ),
            const Divider(),
            const Text(
              "     Es un brujo legendario de la Escuela del Lobo, activo durante"
              "el siglo XIII. Amaba a la hechicera Yennefer de Vengerberg, a pesar"
              "de su tumultuosa relación, y era el padre adoptivo de Ciri. Como "
              "todos los brujos, Geralt era un cazador de monstruos a sueldo."
              "Poseía habilidades sobrehumanas y era un maestro espadachín. Durante"
              "la Prueba de las hierbas, Geralt exhibió una tolerancia inusual a"
              "los mutágenos que concedían a los brujos sus habilidades. Por lo tanto,"
              "Geralt fue expuesto a otros experimentos más fuertes, que le concedieron"
              "el pelo blanco, dándole mayor velocidad, fuerza y resistencia que sus "
              "compañeros brujos.",
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
              textAlign: TextAlign.justify,
            ),
            const Divider(),
            ElevatedButton(
                onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Personajes()))
                    },
                style: ElevatedButton.styleFrom(primary: Colors.white),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.group,
                      color: Color.fromARGB(255, 219, 17, 3),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Regresar a Personajes",
                      style: TextStyle(
                          color: Color.fromARGB(255, 219, 17, 3),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                )),
          ],
        ));
  }
}
