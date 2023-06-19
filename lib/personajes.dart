import 'package:appentertainment/cirilla.dart';
import 'package:appentertainment/geralt.dart';
import 'package:appentertainment/jenefer.dart';
import 'package:appentertainment/main.dart';
import 'package:flutter/material.dart';

class Personajes extends StatelessWidget {
  const Personajes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "PERSONAJES PRINCIPALES",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 219, 17, 3),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: InkWell(
                child: const Text(
                  "Geralt of Rivia",
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Geralt()))
                },
              ),
            ),
            Container(
              child: InkWell(
                child: const Text(
                  "Cirilla of Cintra",
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Cirilla()))
                },
              ),
            ),
            Container(
              child: InkWell(
                child: const Text(
                  "Yennefer of Vengerberg",
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Jenefer()))
                },
              ),
            ),
            Container(
              child: ElevatedButton(
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
            )
          ],
        ),
      ),
    );
  }
}
