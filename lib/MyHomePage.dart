// ignore: file_names
import 'package:cs2/map_screen.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
final List<String> cs2Maps = const [
    'Mirage', 'Dust II', 'Inferno', 'Nuke', 
    'Vertigo', 'Ancient', 'Anubis'
  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: Row(mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Subtick\nNades',style: TextStyle(fontSize: 20),textAlign: TextAlign.center),
            Image.asset("images/logo.png",height: 70,)
          ],
        ),
        titleTextStyle: Theme.of(context).primaryTextTheme.titleLarge,
      centerTitle: true,
      ),
      //TODO: Добавить Список карт и при нажатии открывать MapScreen с названием карты
        
      );
    
  }
}