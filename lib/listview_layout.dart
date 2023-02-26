import 'package:flutter/material.dart';

class ListviewLayout extends StatelessWidget {
  const ListviewLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layout Issues"),
      ),
      body: Container(
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          //shrinkWrap:
          //     true, //sadece içindeki çocukların boyutları kadar yer kaplar
          children: [
            Container(
              width: 200,
              color: Colors.orange.shade200,
            ),
            Container(
              width: 200,
              color: Colors.orange.shade100,
            ),
            Container(
              width: 200,
              color: Colors.orange.shade300,
            ),
            Container(
              width: 200,
              color: Colors.orange.shade500,
            ),
          ],
        ),
        decoration:
            BoxDecoration(border: Border.all(width: 4, color: Colors.red)),
      ),
    );
  }

  Column columnIcindeListe() {
    return Column(
      children: [
        Text("Başladı"),
        Expanded(
          child: ListView(
            //shrinkWrap:
            //     true, //sadece içindeki çocukların boyutları kadar yer kaplar
            children: [
              Container(
                height: 200,
                color: Colors.orange.shade200,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade100,
              ),
            ],
          ),
        ),
        Text("Bitti")
      ],
    );
  }
}
