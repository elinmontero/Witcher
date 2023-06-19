import 'package:appentertainment/momentos.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Reencuentro extends StatefulWidget {
  const Reencuentro({super.key});

  @override
  State<Reencuentro> createState() => _ReencuentroState();
}

class _ReencuentroState extends State<Reencuentro> {
  final videoUrl = "https://www.youtube.com/watch?v=yZDr9SECKjs";
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
          "REENCUENTRO GERALT = YENNEFER ",
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
            "     El reencuentro entre Geralt y Yennefer es lindo, aunque lleno de tensión, ya que Yennefer se da cuenta de que la niña que debe secuestrar es la Niña Sorpresa de su ex amante. Hay cierta incomodidad alegre cuando Ciri entra y ve a Geralt y Yennefer besándose, y más tarde, los tres bromean sobre la existencia de los unicornios. Por un breve momento, casi se siente como una familia, y es la primera vez en mucho tiempo que Geralt ha podido sonreír.",
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
