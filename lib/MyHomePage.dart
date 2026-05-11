// ignore: file_names
import 'package:cs2/map_screen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
//TODO добавить колличество игроков в кс2
//TODO добавить красивый шрифт для всего текста 

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  final List<String> cs2Maps = const [
    'Mirage',
    'Dust II',
    'Inferno',
    'Nuke',
    'Vertigo',
    'Ancient',
    'Anubis',
  ];
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: const Text(
                'Subtick\nNades',
                style: TextStyle(fontSize: 15, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            Image.asset("images/logo.png", height: 70),
          ],
        ),
        actions: [SizedBox(
              height: 50,
              child: TextButton (
                onPressed: () {
                  launchUrl(  
                    Uri.parse('https://taplink.cc/depstarz'));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    child: const Text(
                      'Sponsor Links',
                      style: TextStyle( fontSize: 10, color: Color.fromARGB(255, 0, 0, 0),backgroundColor: Color.fromARGB(255, 255, 255, 255),shadows: [
                        Shadow(
                          color: Color.fromARGB(146, 0, 0, 0),
                          blurRadius: 5,
                          offset: Offset(0.3, 0.3),
                        ),
                      ],),
                    ),
                  ),
                ),
              ),
              
            ),],
        titleTextStyle: Theme.of(context).primaryTextTheme.titleLarge,
        centerTitle: true,
      ),

      // ignore: avoid_unnecessary_containers
      body: ListView.builder(
        itemCount: cs2Maps.length,
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapScreen(mapName: cs2Maps[index]),
                  ),
                );
              },
              child: Container(
                height: 150,
                margin: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Stack(
                    children: [
                      SizedBox.expand(
                        child: Image.asset(
                          "images/${cs2Maps[index].toLowerCase().replaceAll(' ', '_')}.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Center(
                        child: Text(
                          cs2Maps[index],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                color: Colors.black,
                                blurRadius: 5,
                                offset: Offset(2, 2),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
        },
      ), 
    );
  }
}
