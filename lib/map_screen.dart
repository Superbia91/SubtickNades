import 'package:cs2/nade.dart';
import 'package:cs2/nade_card.dart';
import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key, required this.mapName});

  final String mapName;
  final List<Nade> smoke = const [
    Nade(
        title: "Smokes",
        description: "Description for Smokes",
        imageUrl: "images/smokes.png",
        videoUrl: "videos/smokes.mp4"),
  ];
  final List<Nade> flash = const [
    Nade(
        title: "Flashes",
        description: "Description for Flashes",
        imageUrl: "images/flashes.png",
        videoUrl: "videos/flashes.mp4"),
  ];
  final List<Nade> molotov = const [
    Nade(
        title: "Molotovs",
        description: "Description for Molotovs",
        imageUrl: "images/molotovs.png",
        videoUrl: "videos/molotovs.mp4"),
  ];
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          titleTextStyle: Theme.of(context).primaryTextTheme.titleLarge,
          backgroundColor: Theme.of(context).colorScheme.surface,
          title: Text(mapName),
          bottom: const TabBar(
            tabs: [
              Tab(text: "Smokes"),
              Tab(text: "Flashes"),
              Tab(text: "Molotovs"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: smoke.length,
              itemBuilder: (context, index) {
                final nade = smoke[index];
                return NadeCard(
                  title: nade.title,
                  description: nade.description,
                  imageUrl: nade.imageUrl,
                );
              },
            ),
            ListView(children: [
              Text(
                "Flashes for $mapName",
                style: const TextStyle(color: Colors.white),
              )
            ]),
            ListView(children: [
              Text(
                "Molotovs for $mapName",
                style: const TextStyle(color: Colors.white),
              )
            ]),
          ],
        ),
      ),
    );
  }
}

