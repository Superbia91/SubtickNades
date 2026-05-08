import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key,required this.mapName});

  final String mapName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: Theme.of(context).primaryTextTheme.titleLarge,
         backgroundColor: Theme.of(context).colorScheme.surface,
        title: Text(mapName),
      ),
    );
  }
}