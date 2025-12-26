import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  final imageUrl = "assets/images/fluttericon.jpeg";
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            end: Alignment.topRight,
            begin: Alignment.bottomRight,
            colors: [
              const Color.fromARGB(255, 105, 124, 156),
              const Color.fromARGB(255, 151, 167, 151),
            ],
          ),
          // SweepGradient(colors: [Colors.blueAccent, Colors.green]),
          //         RadialGradient(colors: [
          //   const Color.fromARGB(255, 95, 109, 133),
          //   const Color.fromARGB(255, 92, 100, 93)
          // ])
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                ),
              ),
            ),
            Expanded(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imageUrl),
                      ),
                    ),
                  ),
                  Image.network(
                    fit: BoxFit.fill,
                    height: MediaQuery.of(context).size.height / 3,
                    // width: MediaQuery.of(context).size.width / 5,
                    "https://i.pinimg.com/736x/2a/65/63/2a65639590d96ee0aa7136b7ffaa34c8.jpg",
                  ),
                  Image.network(
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height / 3,
                    // width: MediaQuery.of(context).size.width / 5,
                    "https://i.pinimg.com/736x/13/33/fc/1333fcb480d630274e380d9ea6f3d117.jpg",
                  ),
                  Image.network(
                    fit: BoxFit.fill,
                    height: MediaQuery.of(context).size.height / 3,
                    // width: MediaQuery.of(context).size.width / 5,
                    "https://i.pinimg.com/736x/f7/70/db/f770dbad2a19a702f7cc44b0192f4059.jpg",
                  ),
                  Image.network(
                    fit: BoxFit.fill,
                    height: MediaQuery.of(context).size.height / 3,
                    "https://culturekit-assets.imgix.net/11/assets/17c33cf1-ee90-4d97-bca2-108acd272796.png?auto=format&fit=max&w=3840&q=100",
                  ),
                  Image.network(
                    fit: BoxFit.fill,
                    height: MediaQuery.of(context).size.height / 3,
                    "https://a.storyblok.com/f/178900/960x540/6e6bcda041/demon-slayer.jpg",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
