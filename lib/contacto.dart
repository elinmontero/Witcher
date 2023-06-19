import 'package:appentertainment/main.dart';
import 'package:flutter/material.dart';

class Contacto extends StatelessWidget {
  const Contacto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "PARA CONTRATARME",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 219, 17, 3),
      ),
      body: Center(
        child: Column(
          children: [
            const Divider(),
            const Divider(),
            const Divider(),
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/montero.jpg'),
              radius: 120,
            ),
            const Divider(),
            const Text(
              "ELIN ALGENES ENCARNACION MONTERO",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const Divider(),
            const Text(
              "archyfamous24@gmail.com",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const Divider(),
            const Text(
              "809-335-4496",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 120,
            ),
            ElevatedButton(
                onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home())),
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
                ))
          ],
        ),
      ),
    );
  }
}
