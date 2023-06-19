// ignore_for_file: avoid_print

import 'package:appentertainment/contacto.dart';
import 'package:appentertainment/importancia.dart';
import 'package:appentertainment/main.dart';
import 'package:appentertainment/momentos.dart';
import 'package:appentertainment/personajes.dart';
import 'package:appentertainment/sinopsis.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(239, 221, 218, 218),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/menu.jpg"),
                    fit: BoxFit.cover)),
            child: Text(
              "Menú",
              style: TextStyle(fontSize: 35, color: Colors.white),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.home_filled,
              color: Color.fromARGB(255, 8, 26, 54),
            ),
            title: const Text(
              'Portada',
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 8, 26, 54),
                  fontStyle: FontStyle.italic),
            ),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Home()))
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.groups,
              color: Color.fromARGB(255, 8, 26, 54),
            ),
            title: const Text('Personajes',
                style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 8, 26, 54),
                    fontStyle: FontStyle.italic)),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Personajes()))
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.camera_roll,
              color: Color.fromARGB(255, 8, 26, 54),
            ),
            title: const Text(
              'Momentos',
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 8, 26, 54),
                  fontStyle: FontStyle.italic),
            ),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Momentos()))
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.info_outlined,
              color: Color.fromARGB(255, 8, 26, 54),
            ),
            title: const Text('Acerca de',
                style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 8, 26, 54),
                    fontStyle: FontStyle.italic)),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Sinopsis()))
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.lightbulb,
              color: Color.fromARGB(255, 8, 26, 54),
            ),
            title: const Text('En mi vida',
                style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 8, 26, 54),
                    fontStyle: FontStyle.italic)),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Importancia()))
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.wifi_calling_3,
              color: Color.fromARGB(255, 8, 26, 54),
            ),
            title: const Text('Contacto',
                style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 8, 26, 54),
                    fontStyle: FontStyle.italic)),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Contacto()))
            },
          ),
        ],
      ),
    );
  }
}
