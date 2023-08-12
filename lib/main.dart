import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'main/app.dart';
import 'main/app_env.dart';

Future<void> main() async {
  await dotenv.load(fileName: '.env');
  EnvInfo.initialize(AppEnvironment.PROD);
  await Supabase.initialize(
    url: EnvInfo.connectionString,
    anonKey: EnvInfo.apiAnonKey,
  );

  runApp(const ProviderScope(child: MainApp()));
}
