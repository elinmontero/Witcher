import 'package:appentertainment/personajes.dart';
import 'package:flutter/material.dart';

class Jenefer extends StatelessWidget {
  const Jenefer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
            "YENNEFER OF VENGERBERG",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color.fromARGB(255, 219, 17, 3),
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            SizedBox(
              height: 200,
              width: 100,
              child: Image.asset("assets/images/jen.jpg"),
            ),
            const Divider(),
            const Text(
              "     Yennefer es una hechicera, como todas ellas hermosas gracias a elixires de eterna juventud que le hacen aparentar ser una joven de menos de 30 años. Tiene ojos de color violeta y el pelo negro. Es estéril, pero está obsesionada con el deseo de tener hijos. Vive una relación tormentosa e intermitente con Geralt, lo que a veces le ocasiona problemas en su relación con el resto de hechiceras, llegando a enemistarse con varias debido a su egoísmo de cara a su relación con el brujo. Es protectora de Ciri y la encargada de enseñarle los primeros hechizos.",
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
