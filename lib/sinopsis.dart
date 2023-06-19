import 'package:appentertainment/main.dart';
import 'package:flutter/material.dart';

class Sinopsis extends StatelessWidget {
  const Sinopsis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
            "ACERCA DE ESTA SERIE",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color.fromARGB(255, 219, 17, 3),
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const Text(
              "THE WITCHER",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
            const Divider(),
            const Text(
              "TEMPORADA 1 (2019):  8 episodios",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "TEMPORADA 2 (2021):  8 episodios",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "TEMPORADA 3 (2023):  estreno Junio 2023 ",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const Divider(),
            const Text(
              "CREADA POR:   Lauren Schmidt Hissrich  ",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontStyle: FontStyle.italic),
            ),
            const Divider(),
            const Text(
              "SINOPSIS",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellowAccent),
            ),
            const Divider(),
            const Text(
              "     The Witcher es la adaptación televisiva de la saga literaria creada por Andrzej Sapkowski. La trama se desarrolla en un mundo oscuro y adulto en el que habitan criaturas fantásticas propias de la mitología europea del este.",
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
              textAlign: TextAlign.justify,
            ),
            const Divider(),
            const Text(
              "     El brujo Geralt de Rivia es el protagonista y destaca por ser un antihéroe diferente, un cazador de bestias profesional pero solitario. Geralt tiene problemas para sentir que encaja en el mundo pues quienes le rodean son malvados, incluso más que las bestias que caza. Su vida cambia cuando descubre a una poderosa hechicera y a una joven princesa que guardan un peligroso secreto que no quieren que sea desvelado. ",
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
              textAlign: TextAlign.justify,
            ),
            const Divider(),
            const Text(
              "     La hechicera que vivió en Vengerberg, Yennefer, tuvo una dura experiencia vital desde pequeña pero que le ha hecho ser más fuerte. Pronto surge el verdadero amor entre Geralt y ella superando las adversidades que se les muestran. ",
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
              textAlign: TextAlign.justify,
            ),
            const Divider(),
            ElevatedButton(
                onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Home()))
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
        ));
  }
}
