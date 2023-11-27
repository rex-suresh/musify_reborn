import 'package:flutter/material.dart';

class AlbumCard extends StatelessWidget {
  const AlbumCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: Column(
        children: [
          Image.network(
            "https://api.napster.com/imageserver/v2/albums/Alb.468545309/images/500x500.jpg",
            height: 150,
          ),
          // const ListTile(
          //   title: Text('Title text'),
          //   subtitle: Text('Subtitle'),

          // ),
        ],
      ),
    );
  }
}
