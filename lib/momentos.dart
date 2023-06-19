import 'package:appentertainment/main.dart';
import 'package:appentertainment/pelea.dart';
import 'package:appentertainment/reencuentro.dart';
import 'package:appentertainment/transformacion.dart';
import 'package:flutter/material.dart';

class Momentos extends StatelessWidget {
  const Momentos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "GRANDES MOMENTOS DE LA SERIE",
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 219, 17, 3),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          SizedBox(
            width: 250,
            child: Image.asset("assets/images/espada.jpg"),
          ),
          InkWell(
            child: const Text(
              "Pelea de Geralt con la banda de Renfry",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Pelea()))
            },
          ),
          const Divider(),
          const Divider(),
          SizedBox(
            width: 250,
            child: Image.asset("assets/images/jene.jpg"),
          ),
          InkWell(
            child: const Text(
              "La transformación de Yennefer",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Transformacion()))
            },
          ),
          const Divider(),
          const Divider(),
          SizedBox(
            width: 250,
            child: Image.asset("assets/images/ree.png"),
          ),
          InkWell(
            child: const Text(
              "Reencuentro de Geralt y Yennefer",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Reencuentro()))
            },
          ),
          const Divider(),
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
      ),
    );
  }
}
