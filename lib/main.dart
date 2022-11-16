import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:repo_viewer/auth/shared/presentation/app_widget.dart';

Future<void> main() async {
  await dotenv.load();

  runApp(
    const ProviderScope(child: AppWidget()),
  );
}
