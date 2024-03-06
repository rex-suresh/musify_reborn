import 'package:flutter/material.dart';

const inActiveTextXSmall = TextStyle(
  color: Colors.grey,
  fontSize: 12,
);

const inActiveTextSmall = TextStyle(
  color: Colors.grey,
  fontSize: 14,
  fontWeight: FontWeight.w400,
);

const activeTextXXSmall = TextStyle(
  color: Colors.white,
  fontSize: 10,
);

const activeTextSmall = TextStyle(
  color: Colors.white,
  fontSize: 14,
  fontWeight: FontWeight.w400,
);

const activeTextMedium = TextStyle(
  color: Colors.white,
  fontSize: 18,
  fontWeight: FontWeight.w500,
);

const activeTextXLarge = TextStyle(
  color: Colors.white,
  fontSize: 32,
  fontWeight: FontWeight.w200,
);

SliverAppBar screenTitle(String title) => SliverAppBar(
      title: Text(
        title,
        style: activeTextXLarge,
      ),
      foregroundColor: Colors.transparent,
      backgroundColor: Colors.transparent,
    );

SliverAppBar subScreenTitleOf(String title) {
  return SliverAppBar(
    title: SubScreenTitle(title: title),
    backgroundColor: Colors.transparent,
    floating: true,
  );
}

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
        style: activeTextSmall,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        subTitle,
        style: inActiveTextXSmall,
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
        style: activeTextSmall,
        textDirection: TextDirection.rtl,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        description,
        style: activeTextXXSmall,
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
        style: activeTextSmall,
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
      style: activeTextMedium,
    );
  }
}

class ClippedStyleTitle extends StatelessWidget {
  final String titleText;

  const ClippedStyleTitle({
    super.key,
    required this.titleText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      child: Text(
        titleText,
        style: TextStyle(
          color: Theme.of(context).canvasColor,
          fontWeight: FontWeight.w900,
          fontSize: 24,
          shadows: const [
            Shadow(color: Colors.white, blurRadius: 1, offset: Offset(-1, -1)),
          ],
        ),
        maxLines: 2,
      ),
    );
  }
}

class TrackTitlePlusSub extends StatelessWidget {
  final String title;
  final String subTitle;
  final double hPad;

  const TrackTitlePlusSub({
    super.key,
    this.title = '',
    this.subTitle = '',
    this.hPad = 2,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: hPad),
      title: Text(
        title,
        style: activeTextMedium,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        subTitle,
        style: inActiveTextSmall,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
