import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key, required this.mapName});

  final String mapName;

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
        body:  TabBarView(
          children: [
           ListView(children: [NadeCard(title: "title", description: "description", imageUrl: "images/logo.png"),NadeCard(title: "title2", description: "description2", imageUrl: "images/logo.png")],),
           ListView(children: [Text("Flashes for $mapName", style: TextStyle(color: Colors.white),)]),
            ListView(children: [Text("Molotovs for $mapName", style: TextStyle(color: Colors.white),)]),
          ],
          
        ),
        //
      ),
    );
  }
}

class NadeCard extends StatelessWidget {

  final String title;
  final String description;
  final String imageUrl;
  const NadeCard({super.key, required this.title, required this.description, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Column(
        children: [
          ClipRRect(borderRadius: BorderRadius.vertical(top: Radius.circular(10)), child: Image.asset(  imageUrl, height: 200, width: 200, fit: BoxFit.cover,)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
          ),
          Text(description, style: TextStyle(fontSize: 14, color: Colors.white70),),
        ],
      ),
      
      

    );
  }
}
