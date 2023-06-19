import 'package:appentertainment/main.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final _pageController = PageController();

  int _currentPage = 0;

  List<WelcomeSlider> welcomeSlider = [
    WelcomeSlider(image: "assets/images/wicher.png"),
    WelcomeSlider(image: "assets/images/wicher1.jpg"),
    WelcomeSlider(image: "assets/images/jeni.jpg")
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                        onPressed: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Home()))
                            },
                        child: const Text(
                          "skip",
                          style:
                              TextStyle(color: Colors.redAccent, fontSize: 15),
                        ))),
                Expanded(
                  child: PageView.builder(
                      controller: _pageController,
                      itemCount: welcomeSlider.length,
                      onPageChanged: (value) => {
                            setState(
                              () => _currentPage = value,
                            )
                          },
                      itemBuilder: (context, index) {
                        final item = welcomeSlider[index];
                        return Column(
                          children: [
                            Image.asset(
                              item.image,
                              height: 500,
                            ),
                          ],
                        );
                      }),
                ),
                Row(
                    children: List.generate(3, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: AnimatedContainer(
                      duration: const Duration(microseconds: 300),
                      height: 10,
                      width: _currentPage == index ? 30 : 10,
                      decoration: BoxDecoration(
                          color:
                              _currentPage == index ? Colors.red : Colors.grey,
                          borderRadius: BorderRadius.circular(4)),
                    ),
                  );
                }))
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {
              if (_currentPage > welcomeSlider.length - 1) {
                _pageController.nextPage(
                    duration: const Duration(microseconds: 300),
                    curve: Curves.easeOut);
              } else {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home()));
              }
            },
            child: _currentPage != welcomeSlider.length - 1
                ? const Icon(Icons.arrow_forward)
                : const Icon(Icons.done)),
      ),
    );
  }
}

class WelcomeSlider {
  final String image;
  WelcomeSlider({required this.image});
}
