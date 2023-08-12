// ignore_for_file: constant_identifier_names, use_setters_to_change_properties, avoid_classes_with_only_static_members
import 'package:flutter_dotenv/flutter_dotenv.dart';

enum AppEnvironment { DEV, STAGING, PROD }

abstract class EnvInfo {
  static AppEnvironment _environment = AppEnvironment.DEV;

  static void initialize(AppEnvironment environment) {
    EnvInfo._environment = environment;
  }

  static String get appName => _environment._appTitle;
  static String get envName => _environment._envName;
  static String get connectionString => _environment._connectionString;
  static String get apiAnonKey => _environment._apiAnonKey;
  static String get apiServiceRoleKey => _environment._apiServiceRoleKey;
  static AppEnvironment get environment => _environment;
  static bool get isProduction => _environment == AppEnvironment.PROD;
}

extension _EnvProperties on AppEnvironment {
  // App Title
  static final appTitle = dotenv.get('APP_TITLE');

  // APIs
  static final supabaseApiUrlProd = dotenv.get('SUPABASE_API_URL_PROD');
  static final supabaseApiBaseUrlProd = dotenv.get('SUPABASE_API_BASEURL_PROD');
  static final supabaseAnonKeyProd = dotenv.get('SUPABASE_ANON_KEY_PROD');
  static final supabaseServiceRoleKeyProd =
      dotenv.get('SUPABASE_SERVICE_ROLE_KEY_PROD');

  static final supabaseApiUrlDev = dotenv.get('SUPABASE_API_URL_DEV');
  static final supabaseApiBaseUrlDev = dotenv.get('SUPABASE_API_BASEURL_DEV');
  static final supabaseAnonKeyDev = dotenv.get('SUPABASE_ANON_KEY_DEV');
  static final supabaseServiceRoleKeyDev =
      dotenv.get('SUPABASE_SERVICE_ROLE_KEY_DEV');

  static final _appTitles = {
    AppEnvironment.DEV: '$appTitle Dev',
    AppEnvironment.STAGING: '$appTitle Staging',
    AppEnvironment.PROD: appTitle,
  };

  static final _connectionStrings = {
    AppEnvironment.DEV: supabaseApiUrlDev,
    AppEnvironment.STAGING: supabaseApiUrlDev,
    AppEnvironment.PROD: supabaseApiUrlProd,
  };

  static final _envs = {
    AppEnvironment.DEV: 'dev',
    AppEnvironment.STAGING: 'staging',
    AppEnvironment.PROD: 'prod',
  };

  static final _apiAnonKeys = {
    AppEnvironment.DEV: supabaseAnonKeyDev,
    AppEnvironment.STAGING: supabaseAnonKeyDev,
    AppEnvironment.PROD: supabaseAnonKeyProd,
  };

  static final _apiServiceRoleKeys = {
    AppEnvironment.DEV: supabaseServiceRoleKeyDev,
    AppEnvironment.STAGING: supabaseServiceRoleKeyDev,
    AppEnvironment.PROD: supabaseServiceRoleKeyProd,
  };

  String get _appTitle => _appTitles[this]!;
  String get _envName => _envs[this]!;
  String get _connectionString => _connectionStrings[this]!;
  String get _apiAnonKey => _apiAnonKeys[this]!;
  String get _apiServiceRoleKey => _apiServiceRoleKeys[this]!;
}
