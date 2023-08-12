// Copyright (C) 2022 MOI Systems SDN. BHD.
// Unauthorized copying of this file, via any medium is strictly prohibited
// Proprietary and confidential
// Written by Danial Hanif <danial@moisystems.com>

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../data/repositories/authentication_repository_impl.dart';
import '../../domain/repositories/authentication_repository.dart';

part 'login_viewmodel.g.dart';

typedef LoginFormPasswordData = ({String email, String password});
typedef LoginFormOtpData = ({String phoneNumber, String otp});

@riverpod
class LoginViewModel extends _$LoginViewModel {
  LoginFormPasswordData loginFormPasswordData = (email: '', password: '');
  LoginFormOtpData loginFormOtpData = (phoneNumber: '', otp: '');

  String? errorMessage;

  @override
  AuthenticationStatus build() {
    return ref.watch(authenticationRepositoryImplProvider.notifier).status;
  }

  Future<void> loginPassword() async {
    state = AuthenticationStatus.loading;
    try {
      await ref
          .read(authenticationRepositoryImplProvider.notifier)
          .authenticate(
              email: loginFormPasswordData.email,
              password: loginFormPasswordData.password);
      errorMessage = null;
      state = ref.read(authenticationRepositoryImplProvider.notifier).status;
    } on AuthException catch (e) {
      errorMessage = e.message;
    } catch (e) {
      errorMessage = e.toString();
    }
    state = ref.read(authenticationRepositoryImplProvider.notifier).status;
  }

  Future<void> requestOtp() async {
    state = AuthenticationStatus.loading;
    try {
      await ref
          .read(authenticationRepositoryImplProvider.notifier)
          .authenticate(
              method: SupabaseSignInMethod.otp,
              phoneNumber: loginFormOtpData.phoneNumber,
              password: loginFormOtpData.otp);
      errorMessage = null;
      state = ref.read(authenticationRepositoryImplProvider.notifier).status;
    } on AuthException catch (e) {
      errorMessage = e.message;
    } catch (e) {
      errorMessage = e.toString();
    }
    state = ref.read(authenticationRepositoryImplProvider.notifier).status;
  }

  Future<void> verifyOtp() async {
    try {
      final response = await Supabase.instance.client.auth.verifyOTP(
          phone: loginFormOtpData.phoneNumber,
          token: loginFormOtpData.otp,
          type: OtpType.sms);
      state = ref.read(authenticationRepositoryImplProvider.notifier).status;
    } catch (e) {
      errorMessage = e.toString();
      state = AuthenticationStatus.error;
    }
  }

  void setEmail(String email) {
    loginFormPasswordData =
        (email: email, password: loginFormPasswordData.password);
  }

  void setPhoneNumber(String phoneNumber) {
    loginFormOtpData = (phoneNumber: phoneNumber, otp: loginFormOtpData.otp);
  }

  void setOtp(String otp) {
    loginFormOtpData = (phoneNumber: loginFormOtpData.phoneNumber, otp: otp);
  }

  void setPassword(String password) {
    loginFormPasswordData =
        (email: loginFormPasswordData.email, password: password);
  }
}
