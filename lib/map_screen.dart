import 'package:cs2/nade.dart';
import 'package:cs2/nade_card.dart';
import 'package:cs2/nade_repository.dart';
import 'package:flutter/material.dart';
//TODO добавить смоку на лругих картах и оформить красиво(dust2, inferno, nuke, vertigo, ancient, anubis)
class MapScreen extends StatelessWidget {
   const MapScreen({super.key, required this.mapName});

  final String mapName;
  
  
  
  @override
  Widget build(BuildContext context) {
    final List<Nade> smoke = NadeRepository.getSmokesForMap(mapName);



    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          titleTextStyle: Theme.of(context).primaryTextTheme.titleLarge,
          backgroundColor: Theme.of(context).colorScheme.surface,
          title: Text(mapName,style: TextStyle(fontSize: 20),),
          
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: TabBar(
              labelStyle: TextStyle(fontSize: 10,color: Theme.of(context).primaryTextTheme.titleLarge?.color),
              indicatorColor: Colors.white,
              tabs: [
                Tab(icon: Image.asset("images/icons/smoke_Icon.png",height: 40),text: 'Smokes',),
                Tab(icon: Image.asset("images/icons/flash_Icon.png",height: 40),text: "Flashes",),
                Tab(icon: Image.asset("images/icons/molotov_Icon.png",height: 40),text: "Molotovs",),
              ],
            ),
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
                style: TextStyle(color: Theme.of(context).primaryTextTheme.titleLarge?.color),
              )
            ]),
            ListView(children: [
              Text(
                "Molotovs for $mapName",
                style: TextStyle(color: Theme.of(context).primaryTextTheme.titleLarge?.color),
              )
            ]),
          ],
        ),
      ),
    );
  }
}

