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
  static final appTitle = 'GreenJobs';

  // APIs
  static final supabaseApiUrlProd = 'https://prtveipiolzqpwugcmpe.supabase.co';
  static final supabaseApiBaseUrlProd = 'prtveipiolzqpwugcmpe.supabase.co';
  static final supabaseAnonKeyProd =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBydHZlaXBpb2x6cXB3dWdjbXBlIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTE3Njk0NDAsImV4cCI6MjAwNzM0NTQ0MH0.nByoUIjB_Y4PyViW766eLvdVgD0Bfln6e0IYELbghdY';
  static final supabaseServiceRoleKeyProd =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBydHZlaXBpb2x6cXB3dWdjbXBlIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY5MTc2OTQ0MCwiZXhwIjoyMDA3MzQ1NDQwfQ.zuPIQ-dGkC7WLlM53hxorLgJNvcO4EGqreNhJ8f8bIE';

  static final supabaseApiUrlDev = 'http://localhost:54321';
  static final supabaseApiBaseUrlDev = 'localhost:54321';
  static final supabaseAnonKeyDev =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0';
  static final supabaseServiceRoleKeyDev =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImV4cCI6MTk4MzgxMjk5Nn0.EGIM96RAZx35lJzdJsyH-qQwv8Hdp7fsn3W0YpN81IU';

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
