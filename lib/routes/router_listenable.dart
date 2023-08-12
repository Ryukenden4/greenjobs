import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../features/authentication/data/repositories/authentication_repository_impl.dart';
import '../features/authentication/domain/repositories/authentication_repository.dart';
import 'routes.dart';

part 'router_listenable.g.dart';

@riverpod
class RouterListenable extends _$RouterListenable implements Listenable {
  VoidCallback? _routerListener;
  AuthenticationStatus _authStatus = AuthenticationStatus.unauthenticated;

  @override
  Future<void> build() async {
    // One could watch more providers and write logic accordingly

    _authStatus = await ref.watch(authenticationRepositoryImplProvider.future);

    ref.listenSelf((_, __) {
      // One could write more conditional logic for when to call redirection
      if (state.isLoading) return;
      _routerListener?.call();
    });
  }

  /// Redirects the user when our authentication changes
  Future<String?> redirect(BuildContext context, GoRouterState state) async {
    if (this.state.isLoading || this.state.hasError) return null;

    final isSplash = state.uri.toString() == SplashRoute.path;

    if (isSplash) {
      return RootRoute.path;
    }

    final isLoggingIn = state.uri.toString() == LoginRoute.path;
    final isSigningUp = state.uri.toString() == SignUpRoute.path;
    if (isLoggingIn || isSigningUp) {
      switch (_authStatus) {
        case AuthenticationStatus.authenticated:
          return RootRoute.path;
        default:
          return null;
      }
    }

    return _authStatus == AuthenticationStatus.authenticated
        ? null
        : LoginRoute.path;
  }

  /// Adds [GoRouter]'s listener as specified by its [Listenable].
  /// [GoRouteInformationProvider] uses this method on creation to handle its
  /// internal [ChangeNotifier].
  /// Check out the internal implementation of [GoRouter] and
  /// [GoRouteInformationProvider] to see this in action.
  @override
  void addListener(VoidCallback listener) {
    _routerListener = listener;
  }

  /// Removes [GoRouter]'s listener as specified by its [Listenable].
  /// [GoRouteInformationProvider] uses this method when disposing,
  /// so that it removes its callback when destroyed.
  /// Check out the internal implementation of [GoRouter] and
  /// [GoRouteInformationProvider] to see this in action.
  @override
  void removeListener(VoidCallback listener) {
    _routerListener = null;
  }
}
