import 'package:appentertainment/momentos.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Pelea extends StatefulWidget {
  const Pelea({super.key});

  @override
  State<Pelea> createState() => _PeleaState();
}

class _PeleaState extends State<Pelea> {
  final videoUrl = "https://www.youtube.com/watch?v=ucQlJqvKFak";
  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoId = YoutubePlayer.convertUrlToId(videoUrl);

    _controller = YoutubePlayerController(
        initialVideoId: videoId!,
        flags: const YoutubePlayerFlags(autoPlay: false));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "PELEA CON LA BANDA DE RENFRI",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 219, 17, 3),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            "CONTEXTO",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.red,
                fontStyle: FontStyle.italic),
            textAlign: TextAlign.center,
          ),
          const Divider(),
          const Text(
            "      Renfri llevó a sus hombres al mercado, con la intención de forzar la mano de Stregobor o Geralt manteniendo a la gente del mercado como rehenes a cambio del hechicero. Al darse cuenta de que era una artimaña, Geralt corrió al mercado para confrontarla y se encontró con su banda mientras Renfri fue a la torre de Stregobor para darle el ultimátum. Sin embargo, Stregobor se echó a reír en su cara, afirmando que podía matar a todos en Blaviken y las aldeas vecinas, él no iba a salir de la torre. Cuando Renfri regresó al mercado, Geralt acababa de matar a todos sus hombres. Ella desenvainó su espada, a pesar de que Geralt le pidió que renunciara. Los dos se enfrentaron en combate hasta que Geralt cortó una de las arterias de sus piernas, terminando con la vida de la princesa. ",
            style: TextStyle(
                fontSize: 20, fontStyle: FontStyle.italic, color: Colors.white),
            textAlign: TextAlign.justify,
          ),
          const Divider(),
          const Text(
            "  A continuación te dejo un fragmento de este momento, para que puedas disfrutarlo:      ",
            style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.white),
            textAlign: TextAlign.justify,
          ),
          const Divider(),
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
          ),
          const Divider(),
          const Divider(),
          const Divider(),
          ElevatedButton(
              onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Momentos()))
                  },
              style: ElevatedButton.styleFrom(primary: Colors.white),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.camera_roll,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Regresar a Grandes Momentos",
                    style: TextStyle(
                        color: Colors.red,
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
