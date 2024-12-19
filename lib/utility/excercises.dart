import 'package:flutter/material.dart';

class Excercise_Tile extends StatefulWidget {
  const Excercise_Tile({super.key});

  @override
  State<Excercise_Tile> createState() => _Excercise_TileState();
}

class _Excercise_TileState extends State<Excercise_Tile> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(bottom: 12),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [ 
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                      color: Colors.orange,
                      padding: EdgeInsets.all(16),
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.white,
                      )),
                ),
               const SizedBox(
                  width: 12,
                ),
               const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Title
                    Text(
                      "Speaking Skills",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    //Subtitle
                    Text(
                      "16 Excercises",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    )
                  ],
                ),
              ],
            ),
            const Icon(Icons.more_horiz)
          ],
        ),
      ),
    );
  }
}
