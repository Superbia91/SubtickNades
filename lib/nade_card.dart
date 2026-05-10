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
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NadeDetailScreen(nade:nade),
          ),
        );
      },
      child: Container(
        width: 200,
        child: Column(
          children: [
            ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(10)),
                child: Image.asset(
                  nade.imageUrl,
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                )),
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
          ],
        ),
      ),
    );
  }
}
