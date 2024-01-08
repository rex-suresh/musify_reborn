import 'package:flutter/material.dart';

class MainScrollableList extends StatelessWidget {
  final String listTitle;
  final Widget Function(dynamic) widgetBuilder;
  final Iterable<dynamic> data;
  final double listHeight;

  const MainScrollableList({
    super.key,
    required this.data,
    required this.widgetBuilder,
    required this.listTitle,
    this.listHeight = 260,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          listTitle,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
        SizedBox(
          height: listHeight,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [...data.map(widgetBuilder)],
          ),
        )
      ],
    );
  }
}
