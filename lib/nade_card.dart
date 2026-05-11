import 'package:cs2/nade.dart';
import 'package:cs2/nade_detail_screen.dart';
import 'package:flutter/material.dart';

class NadeCard extends StatelessWidget {
final Nade nade;

  const NadeCard(
      {super.key,
       required this.nade});

  @override
  Widget build(BuildContext context) {
    //TODO оформить красиво контейнер с картинкой, названием и описанием. И при нажатии открывать видео на весь экран
    return InkWell( // TODO сделать так что нажатие регается только на картинку, а не на весь контейнер
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NadeDetailScreen(nade:nade),
            ),
          );
        },
        child: Card(
          color: Color.fromARGB(255, 39, 39, 39),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: SizedBox(
              width: 200,
              child: Column(
                children: [
                  Align(
                        child: Image.asset(
                          nade.imageUrl,
                          height: 200,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      nade.title,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Text(
                    nade.description,
                    style: const TextStyle(fontSize: 14, color: Colors.white70),
                  ),
                  
            
                  //TODO добавить остальные разкидки на мираже
                ],
              ),
            ),
          ),
        ),
        
      );

    
  }
}
