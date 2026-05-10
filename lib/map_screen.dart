import 'package:cs2/nade.dart';
import 'package:cs2/nade_card.dart';
import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key, required this.mapName});

  final String mapName;
  final List<Nade> smoke = const [
    Nade(
        title: "Smokes mid t spawn",
        description: "smoke from t spawn to mid",
        imageUrl: "images/smoke_mid_mirage.png",
        videoUrl: "videos/mirage_smoke_window.mp4"),
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
                  nade: nade,
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

