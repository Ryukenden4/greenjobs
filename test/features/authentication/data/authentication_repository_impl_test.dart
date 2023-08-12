import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:greenjobs/features/authentication/data/repositories/authentication_repository_impl.dart';
import 'package:greenjobs/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:greenjobs/main/app_env.dart';
import 'package:shared_preferences_linux/shared_preferences_linux.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase;

void main() {
  group('Authentication Repository Test', () {
    late final AuthenticationRepository authenticationRepository;
    var userUid = '';
    setUpAll(() async {
      WidgetsFlutterBinding.ensureInitialized();
      dotenv.testLoad(fileInput: File('.env').readAsStringSync());
      SharedPreferencesLinux.registerWith();
      EnvInfo.initialize(AppEnvironment.PROD);
      await supabase.Supabase.initialize(
          debug: false,
          localStorage: const supabase.EmptyLocalStorage(),
          url: EnvInfo.connectionString,
          anonKey: EnvInfo.apiAnonKey);
      final container = ProviderContainer();
      authenticationRepository =
          container.read(authenticationRepositoryImplProvider.notifier);
      addTearDown(() => container.dispose);
      addTearDown(() => supabase.Supabase.instance.dispose);
    });

    Future<void> deleteUsers() async {
      supabase.Supabase.instance.dispose();
      await supabase.Supabase.initialize(
          debug: false,
          localStorage: const supabase.EmptyLocalStorage(),
          url: EnvInfo.connectionString,
          anonKey: EnvInfo.apiServiceRoleKey);
      await supabase.Supabase.instance.client.auth.admin.deleteUser(userUid);
    }

    test('Sign up user', () async {
      await authenticationRepository.signUp(
        password: '123456',
        phoneNumber: '60178761011',
        data: {
          'name': 'Test User',
        },
      );
      await authenticationRepository.authenticate(
        password: '123456',
        phoneNumber: '60178761011',
      );
      var session = supabase.Supabase.instance.client.auth.currentSession;
      expect(session, isNotNull);
      expect(session!.user.phone, '60178761011');
      userUid = authenticationRepository.currentUser!.id;

      await authenticationRepository.logOut();
      session = supabase.Supabase.instance.client.auth.currentSession;
      expect(session, isNull);

      await deleteUsers();
    });

    test('Sign up company', () async {
      await authenticationRepository.signUp(
        email: 'test@mail.com',
        password: '123456',
        data: {
          'companyName': 'GreenJobs',
          'representativeName': 'Test Name',
          'representativePhone': '601110230898'
        },
      );
      await authenticationRepository.authenticate(
        email: 'test@mail.com',
        password: '123456',
      );
      var session = supabase.Supabase.instance.client.auth.currentSession;
      expect(session, isNotNull);
      expect(session!.user.phone, '601110230898');
      userUid = authenticationRepository.currentUser!.id;

      await authenticationRepository.logOut();
      session = supabase.Supabase.instance.client.auth.currentSession;
      expect(session, isNull);

      await deleteUsers();
    });
  });
}
