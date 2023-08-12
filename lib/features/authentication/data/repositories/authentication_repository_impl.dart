// Copyright (C) 2022 MOI Systems SDN. BHD.
// Unauthorized copying of this file, via any medium is strictly prohibited
// Proprietary and confidential
// Written by Danial Hanif <danial@moisystems.com>

import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase;
import '../../../../shared/domain/models/entities/company.dart';
import '../../domain/repositories/authentication_repository.dart';

part 'authentication_repository_impl.g.dart';

@riverpod
class AuthenticationRepositoryImpl extends _$AuthenticationRepositoryImpl
    implements AuthenticationRepository {
  AuthenticationRepositoryImpl() {
    supabase.Supabase.instance.client.auth.onAuthStateChange
        .listen((data) async {
      switch (data.event) {
        case supabase.AuthChangeEvent.signedIn:
          state = const AsyncValue.data(AuthenticationStatus.authenticated);
          break;
        case supabase.AuthChangeEvent.signedOut:
          state = const AsyncValue.data(AuthenticationStatus.unauthenticated);
          break;
        default:
          state = const AsyncValue.data(AuthenticationStatus.unauthenticated);
      }
    });
  }

  @override
  Future<AuthenticationStatus> build() async {
    if (supabase.Supabase.instance.client.auth.currentSession != null) {
      return AuthenticationStatus.authenticated;
    }
    return AuthenticationStatus.unauthenticated;
  }

  supabase.User? _user;

  @override
  supabase.User? get currentUser => _user;

  @override
  Future<void> logOut() async {
    await supabase.Supabase.instance.client.auth.signOut();
  }

  @override
  Future<void> resetPassword({String? email, String? username}) async {
    assert(email != null && username == null);
    await supabase.Supabase.instance.client.auth.resetPasswordForEmail(email!);
  }

  @override
  Future<void> authenticate({
    String? email,
    String? username,
    String? phoneNumber,
    SupabaseSignInMethod method = SupabaseSignInMethod.password,
    supabase.Provider? provider,
    required String password,
    Map<String, Object?>? data,
  }) async {
    state = const AsyncValue.data(AuthenticationStatus.loading);
    try {
      switch (method) {
        case SupabaseSignInMethod.oauth:
          await supabase.Supabase.instance.client.auth.signInWithOAuth(
              provider!,
              authScreenLaunchMode: supabase.LaunchMode.platformDefault);

          break;
        case SupabaseSignInMethod.otp:
          await supabase.Supabase.instance.client.auth.signInWithOtp(
            email: email,
            phone: phoneNumber,
            data: data,
          );
          state = const AsyncValue.data(AuthenticationStatus.otpSent);
          break;
        default:
          _user = (await supabase.Supabase.instance.client.auth
                  .signInWithPassword(
                      email: email, phone: phoneNumber, password: password))
              .user;
          _company = await supabase.Supabase.instance.client
              .from('companies')
              .select<Map<String, dynamic>?>('*')
              .eq('id', _user!.id)
              .maybeSingle()
              .withConverter((data) => Company.fromJson(data ?? {}));
      }
    } on supabase.AuthException catch (e) {
      state = const AsyncValue.data(AuthenticationStatus.invalid);
      rethrow;
    } catch (e) {
      state = const AsyncValue.data(AuthenticationStatus.error);
      rethrow;
    }
  }

  @override
  Future<void> signUp({
    String? email,
    String? phoneNumber,
    required String password,
    Map<String, Object?>? data,
  }) async {
    await supabase.Supabase.instance.client.auth.signUp(
        email: email, phone: phoneNumber, password: password, data: data);
  }

  Company? _company;

  @override
  Company? get currentCompany => _company;

  @override
  AuthenticationStatus get status => state.asData!.value;
}

enum SupabaseSignInMethod {
  oauth,
  otp,
  password,
}
