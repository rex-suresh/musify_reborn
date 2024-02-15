import 'package:flutter/material.dart';
import 'package:musify_reborn/src/misc/titles.dart';

class ScrollableList extends StatelessWidget {
  final String listTitle;
  final Widget Function(dynamic) widgetBuilder;
  final Iterable<dynamic> data;
  final double listHeight;
  final Axis scrollDirection;
  static double gap = 12;

  const ScrollableList({
    super.key,
    required this.data,
    required this.widgetBuilder,
    required this.listTitle,
    required this.listHeight,
    required this.scrollDirection,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: gap),
          margin: EdgeInsets.symmetric(vertical: gap),
          child: SubScreenTitle(
            title: listTitle,
          ),
        ),
        SizedBox(
          height: listHeight,
          child: ListView.builder(
            addAutomaticKeepAlives: true,
            scrollDirection: scrollDirection,
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) =>
                widgetBuilder(data.elementAt(index)),
          ),
        )
      ],
    );
  }
}

class UnScrollableList extends StatelessWidget {
  final String listTitle;
  final Widget Function(dynamic) widgetBuilder;
  final Iterable<dynamic> data;
  final Axis scrollDirection;
  static double gap = 12;

  const UnScrollableList({
    super.key,
    required this.data,
    required this.widgetBuilder,
    required this.listTitle,
    required this.scrollDirection,
  });

  @override
  Widget build(BuildContext context) {
    return Flex(
        direction: Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: gap),
            margin: EdgeInsets.symmetric(vertical: gap),
            child: SubScreenTitle(
              title: listTitle,
            ),
          ),
          SizedBox(
            height: 300,
            child: ListView(
              children: [
                ...data.map((item) {
                  return widgetBuilder(item);
                })
              ],
            ),
          )
        ]);
  }
}

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
    return ScrollableList(
      data: data,
      widgetBuilder: widgetBuilder,
      listTitle: listTitle,
      listHeight: listHeight,
      scrollDirection: Axis.horizontal,
    );
  }
}

class CrossScrollableList extends StatelessWidget {
  final String listTitle;
  final Widget Function(dynamic) widgetBuilder;
  final Iterable<dynamic> data;
  final double listHeight;
  static double gap = 12;

  const CrossScrollableList({
    super.key,
    required this.data,
    required this.widgetBuilder,
    required this.listTitle,
    this.listHeight = 260,
  });

  @override
  Widget build(BuildContext context) {
    return ScrollableList(
      data: data,
      widgetBuilder: widgetBuilder,
      listTitle: listTitle,
      listHeight: listHeight,
      scrollDirection: Axis.vertical,
    );
  }
}

class CrossList extends StatelessWidget {
  final String listTitle;
  final Widget Function(dynamic) widgetBuilder;
  final Iterable<dynamic> data;
  static double gap = 12;

  const CrossList({
    super.key,
    required this.data,
    required this.widgetBuilder,
    required this.listTitle,
  });

  @override
  Widget build(BuildContext context) {
    return UnScrollableList(
      data: data,
      widgetBuilder: widgetBuilder,
      listTitle: listTitle,
      scrollDirection: Axis.vertical,
    );
  }
}
