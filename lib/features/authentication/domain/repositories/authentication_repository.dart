// Copyright (C) 2022 MOI Systems SDN. BHD.
// Unauthorized copying of this file, via any medium is strictly prohibited
// Proprietary and confidential
// Written by Danial Hanif <danial@moisystems.com>

import 'dart:async';

import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../shared/domain/models/entities/company.dart';

enum AuthenticationStatus {
  authenticated,
  unauthenticated,
  invalid,
  otpSent,
  loading,
  error
}

abstract class AuthenticationRepository {
  /// Returns whether the [User] is authenticated.
  AuthenticationStatus get status;

  /// Authenticates a user using their [username] and [password]
  Future<void> authenticate({
    String? email,
    String? username,
    String? phoneNumber,
    required String password,
  });

  /// Logs out the [User]. Add [AuthenticationStatus] to [controller]
  Future<void> logOut();

  /// Returns the current authenticated [User].
  Future<void> signUp({
    String? email,
    String? phoneNumber,
    required String password,
    Map<String, Object?>? data,
  });

  /// Returns the current cached user.
  /// Defaults to [User.empty] if there is no cached user.
  User? get currentUser;

  Company? get currentCompany;

  // /// Resets the password of a [User]
  Future<void> resetPassword({String? email, String? username});
}
