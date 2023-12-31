import 'package:flutter/material.dart';

AppBar Function(String title) screenTitle = (String title) {
  var textStyle = const TextStyle(
    color: Colors.white,
    fontSize: 32,
    fontWeight: FontWeight.w200,
  );

  return AppBar(
    title: Text(
      title,
      style: textStyle,
    ),
    centerTitle: false,
    automaticallyImplyLeading: false,
    leading: null,
  );
};

class TitlePlusSub extends StatelessWidget {
  final String title;
  final String subTitle;

  const TitlePlusSub({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 2),
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
