import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';

import 'src/app/app.dart';
import 'src/models/player_queue.dart';

Future<void> main() async {
  await dotenv.load(fileName: '.env');

  runApp(ChangeNotifierProvider(
    create: (context) => PlayerQueue(),
    child: const Musify(),
  ));
}
