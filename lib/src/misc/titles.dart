import 'package:flutter/material.dart';

SliverAppBar Function(String title) screenTitle = (String title) {
  var textStyle = const TextStyle(
    color: Colors.white,
    fontSize: 32,
    fontWeight: FontWeight.w200,
  );

  return SliverAppBar(
    title: Text(
      title,
      style: textStyle,
    ),
    foregroundColor: Colors.transparent,
    backgroundColor: Colors.transparent,
  );
};

class TitlePlusSub extends StatelessWidget {
  final String title;
  final String subTitle;
  final double hPad;

  const TitlePlusSub({
    super.key,
    required this.title,
    required this.subTitle,
    this.hPad = 2,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: hPad),
      title: Text(
        title,
        style: const TextStyle(fontSize: 14),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        subTitle,
        style: const TextStyle(fontSize: 12, color: Colors.grey),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class TitlePlusDescription extends StatelessWidget {
  final String title;
  final String description;
  final double hPad;
  final double vPad;

  const TitlePlusDescription({
    super.key,
    required this.title,
    required this.description,
    this.hPad = 2,
    this.vPad = 2,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: hPad, vertical: vPad),
      title: Text(
        title,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        textDirection: TextDirection.rtl,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        description,
        style: const TextStyle(fontSize: 10, color: Colors.white),
        softWrap: true,
        textDirection: TextDirection.rtl,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class CardTitle extends StatelessWidget {
  final String title;
  final double hPad;
  final double vPad;

  const CardTitle({
    super.key,
    required this.title,
    this.hPad = 2,
    this.vPad = 2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: hPad, vertical: vPad),
      child: Text(
        title,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        textDirection: TextDirection.rtl,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class SubScreenTitle extends StatelessWidget {
  final String title;

  const SubScreenTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18,
      ),
    );
  }
}
