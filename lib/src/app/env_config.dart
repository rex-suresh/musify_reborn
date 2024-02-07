import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvConfig {
  final String apiDomain = dotenv.env['API_DOMAIN']!;
}
