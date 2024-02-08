import 'package:flutter/material.dart';

class MainScrollableList extends StatelessWidget {
  final String listTitle;
  final Widget Function(dynamic) widgetBuilder;
  final Iterable<dynamic> data;
  final double listHeight;
  static double gap = 12;

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
        Container(
          padding: EdgeInsets.symmetric(horizontal: gap),
          margin: EdgeInsets.symmetric(vertical: gap),
          child: Text(
            listTitle,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
        ),
        SizedBox(
          height: listHeight,
          child: ListView.builder(
            addAutomaticKeepAlives: true,
            scrollDirection: Axis.horizontal,
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) =>
                widgetBuilder(data.elementAt(index)),
          ),
        )
      ],
    );
  }
}
