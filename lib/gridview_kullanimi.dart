import 'package:flutter/material.dart';

class GridViewOrnek extends StatelessWidget {
  const GridViewOrnek({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: GridView.count(
        crossAxisCount: 2, //main axiste olacak eleman sayısı
        primary: false,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        crossAxisSpacing: 20,
        mainAxisSpacing: 40,
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text(
              "Hello Flutter",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text(
              "Hello Flutter",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text(
              "Hello Flutter",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text(
              "Hello Flutter",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text(
              "Hello Flutter",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text(
              "Hello Flutter",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text(
              "Hello Flutter",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text(
              "Hello Flutter",
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
