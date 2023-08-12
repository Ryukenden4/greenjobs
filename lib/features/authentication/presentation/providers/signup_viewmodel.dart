// Copyright (C) 2022 MOI Systems SDN. BHD.
// Unauthorized copying of this file, via any medium is strictly prohibited
// Proprietary and confidential
// Written by Danial Hanif <danial@moisystems.com>

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../data/repositories/authentication_repository_impl.dart';
import '../../domain/repositories/authentication_repository.dart';

part 'signup_viewmodel.g.dart';

typedef SignUpFormCompanyData = ({
  String companyName,
  String representativeName,
  String representativeEmail,
  String representativePhone,
  String password,
});
typedef SignupFormUserData = ({
  String name,
  String phoneNumber,
  String otp,
});

@riverpod
class SignUpViewModel extends _$SignUpViewModel {
  SignUpFormCompanyData signUpFormCompanyData = (
    companyName: '',
    representativeName: '',
    representativeEmail: '',
    representativePhone: '',
    password: '',
  );
  SignupFormUserData signUpFormUserData = (
    name: '',
    phoneNumber: '',
    otp: '',
  );

  String? errorMessage;

  @override
  AuthenticationStatus build() {
    return ref.watch(authenticationRepositoryImplProvider.notifier).status;
  }

  Future<void> signUpPassword() async {
    state = AuthenticationStatus.loading;
    try {
      await ref.read(authenticationRepositoryImplProvider.notifier).signUp(
          email: signUpFormCompanyData.representativeEmail,
          password: signUpFormCompanyData.password,
          data: {
            'companyName': signUpFormCompanyData.companyName,
            'representativeName': signUpFormCompanyData.representativeName,
            'representativeEmail': signUpFormCompanyData.representativeEmail,
            'representativePhone': signUpFormCompanyData.representativePhone,
          });
      errorMessage = null;
      state = ref.read(authenticationRepositoryImplProvider.notifier).status;
    } on AuthException catch (e) {
      errorMessage = e.message;
      state = AuthenticationStatus.error;
    } catch (e) {
      errorMessage = e.toString();
      state = AuthenticationStatus.error;
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
              phoneNumber: signUpFormUserData.phoneNumber,
              password: '',
              data: {
            'name': signUpFormUserData.name,
          });
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
    state = AuthenticationStatus.loading;
    try {
      final response = await Supabase.instance.client.auth.verifyOTP(
          phone: signUpFormUserData.phoneNumber,
          token: signUpFormUserData.otp,
          type: OtpType.sms);
      state = ref.read(authenticationRepositoryImplProvider.notifier).status;
    } catch (e) {
      errorMessage = e.toString();
      state = AuthenticationStatus.error;
    }
  }

  void setUserName(String name) {
    signUpFormUserData = (
      name: name,
      phoneNumber: signUpFormUserData.phoneNumber,
      otp: signUpFormUserData.otp
    );
  }

  void setUserPhoneNumber(String phoneNumber) {
    signUpFormUserData = (
      name: signUpFormUserData.name,
      phoneNumber: phoneNumber,
      otp: signUpFormUserData.otp
    );
  }

  void setOtp(String otp) {
    signUpFormUserData = (
      name: signUpFormUserData.name,
      phoneNumber: signUpFormUserData.phoneNumber,
      otp: otp + signUpFormUserData.otp
    );
  }

  void setCompanyName(String companyName) {
    signUpFormCompanyData = (
      companyName: companyName,
      representativeName: signUpFormCompanyData.representativeName,
      representativeEmail: signUpFormCompanyData.representativeEmail,
      representativePhone: signUpFormCompanyData.representativePhone,
      password: signUpFormCompanyData.password
    );
  }

  void setReprensentativeName(String name) {
    signUpFormCompanyData = (
      companyName: signUpFormCompanyData.companyName,
      representativeName: name,
      representativeEmail: signUpFormCompanyData.representativeEmail,
      representativePhone: signUpFormCompanyData.representativePhone,
      password: signUpFormCompanyData.password
    );
  }

  void setRepresentativeEmail(String email) {
    signUpFormCompanyData = (
      companyName: signUpFormCompanyData.companyName,
      representativeName: signUpFormCompanyData.representativeName,
      representativeEmail: email,
      representativePhone: signUpFormCompanyData.representativePhone,
      password: signUpFormCompanyData.password
    );
  }

  void setRepresentativePhoneNumber(String phoneNumber) {
    signUpFormCompanyData = (
      companyName: signUpFormCompanyData.companyName,
      representativeName: signUpFormCompanyData.representativeName,
      representativeEmail: signUpFormCompanyData.representativeEmail,
      representativePhone: phoneNumber,
      password: signUpFormCompanyData.password
    );
  }

  void setCompanyPassword(String password) {
    signUpFormCompanyData = (
      companyName: signUpFormCompanyData.companyName,
      representativeName: signUpFormCompanyData.representativeName,
      representativeEmail: signUpFormCompanyData.representativeEmail,
      representativePhone: signUpFormCompanyData.representativePhone,
      password: password
    );
  }
}
