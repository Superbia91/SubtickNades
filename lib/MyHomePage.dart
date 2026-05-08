// ignore: file_names
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
            Image.asset("images/logo.png",height: 70,),
            
          ],
        ),
        titleTextStyle: Theme.of(context).primaryTextTheme.titleLarge,
      centerTitle: true,
      ),
      // ignore: avoid_unnecessary_containers
      
      body: ListView.builder(itemCount: cs2Maps.length, itemBuilder: (context, index) {
        
      
      
        return Container(height: 150,margin: EdgeInsets.all(10), child:ClipRRect(borderRadius: BorderRadius.circular(15),child:Stack( children: [SizedBox.expand(child: Image.asset("images/${cs2Maps[index].toLowerCase().replaceAll(' ', '_')}.png",fit: BoxFit.cover,),),Align(child: Text(cs2Maps[index],style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.bold,shadows: [Shadow(color: Colors.black,blurRadius: 5,offset: Offset(2, 2))]),),)])));
      })//TODO добавь камит о том что ты добавил скругление 

        
      );
    
  }
}