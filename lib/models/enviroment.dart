import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Enviroment {
  static String get fileName {
    if (kReleaseMode) {
      return '.env.production';
    }
    return '.env.development';
  }

  static String get githubSecret {
    return dotenv.get('GITHUB_SECRETE', fallback: 'no github sercet found');
  }
}
