import 'package:appentertainment/main.dart';
import 'package:flutter/material.dart';

class Importancia extends StatelessWidget {
  const Importancia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
            "EN MI VIDA",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          backgroundColor: const Color.fromARGB(255, 219, 17, 3),
        ),
        body: Center(
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: [
              const Text(
                "PORQUÉ ES IMPORTANTE ESTA  SERIE PARA MI",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
                textAlign: TextAlign.center,
              ),
              const Divider(),
              const Text(
                "     Considero que esta es una de las mejores series que he visto en mi vida, tomando en cuenta los elementos que mas me llaman la atención, al momento de calificar una serie o película; magia, ciencia ficción, mezclado con un mundo medieval y un gran desarrollo de sus personajes, es música para mis oidos.  ",
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
                textAlign: TextAlign.justify,
              ),
              const Divider(),
              const Text(
                "    Ya descrito lo anterior, voy al punto; esta serie llegó en uno de los peores momentos por lo que ha pasado la humanidad, la aparición del covid-19. Yo me encontraba muy agobiado por todo ese encierro y exceso de información al que fuimos sometidos y the witcher me ayudó muchísimo a subir mi estado de ánimo en diversas ocasiones, la veía una y otra vez. ",
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
                textAlign: TextAlign.justify,
              ),
              const Divider(),
              const Divider(),
              ElevatedButton(
                  onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Home()))
                      },
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.home_filled,
                        color: Color.fromARGB(255, 219, 17, 3),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Regresar a Portada",
                        style: TextStyle(
                            color: Color.fromARGB(255, 219, 17, 3),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )
                    ],
                  )),
            ],
          ),
        ));
  }
}
