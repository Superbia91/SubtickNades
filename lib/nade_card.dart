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
    return Card(
          color: Color.fromARGB(255, 39, 39, 39),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: SizedBox(
              width: 200,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NadeDetailScreen(nade: nade),
                        ),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                          child: Image.asset(
                            nade.imageUrl,
                            height: 200,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          nade.title,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(height: 8),
                      ],
                    ),
                  ),
                  Text(
                    nade.description,
                    style: const TextStyle(fontSize: 14, color: Color.fromARGB(80, 255, 255, 255)),
                  ),
                  
            
                 
                ],
              ),
            ),
          ),
        );
        
      

    
  }
}
