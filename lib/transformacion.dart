import 'package:appentertainment/momentos.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Transformacion extends StatefulWidget {
  const Transformacion({super.key});

  @override
  State<Transformacion> createState() => _TransformacionState();
}

class _TransformacionState extends State<Transformacion> {
  final videoUrl = "https://www.youtube.com/watch?v=gn46AafcROU";
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
        title: const Text("TRANSFORMACION DE YENNEFER"),
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
            "      En el tercer episodio de la serie, Yennefer decide someterse a una especie de conjuro-operación donde renace de forma más bella, con un físico digno de hechiceras, sin jorobas ni bocas dobladas, pero eso sí, sacrificando a cambio su fertilidad. Entra al salón como una Diosa y deja a todos boquiabiertos.  ",
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
