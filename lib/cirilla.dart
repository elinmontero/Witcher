import 'package:appentertainment/personajes.dart';
import 'package:flutter/material.dart';

class Cirilla extends StatelessWidget {
  const Cirilla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
            "CIRILLA OF CINTRA",
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
              child: Image.asset("assets/images/ciri.jpg"),
            ),
            const Divider(),
            const Text(
              "     Llamada Ciri, es la hija de Pavetta y Duny, aprendiz de Geralt, princesa de Cintra. Su abuela Calanthe fue la temida Leona de Cintra frente a la invasión Nilfgaardiana. Ciri es una Niña de la Sorpresa cuyo destino está atado al del brujo Geralt a causa de una promesa. Su nombre deriva de Zirael, que significa en élfico 'golondrina', lo que podría explicar la vinculación de la niña a la Torre de la Golondrina.",
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
              textAlign: TextAlign.justify,
            ),
            const Divider(),
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
