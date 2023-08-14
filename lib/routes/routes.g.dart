// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $splashRoute,
      $loginRoute,
      $signUpRoute,
      $shellRoute,
    ];

RouteBase get $splashRoute => GoRouteData.$route(
      path: '/splash',
      factory: $SplashRouteExtension._fromState,
    );

extension $SplashRouteExtension on SplashRoute {
  static SplashRoute _fromState(GoRouterState state) => const SplashRoute();

  String get location => GoRouteData.$location(
        '/splash',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $loginRoute => GoRouteData.$route(
      path: '/login',
      factory: $LoginRouteExtension._fromState,
    );

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => const LoginRoute();

  String get location => GoRouteData.$location(
        '/login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $signUpRoute => GoRouteData.$route(
      path: '/signup',
      factory: $SignUpRouteExtension._fromState,
    );

extension $SignUpRouteExtension on SignUpRoute {
  static SignUpRoute _fromState(GoRouterState state) => const SignUpRoute();

  String get location => GoRouteData.$location(
        '/signup',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $shellRoute => ShellRouteData.$route(
      navigatorKey: ShellRoute.$navigatorKey,
      factory: $ShellRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/',
          parentNavigatorKey: RootRoute.$parentNavigatorKey,
          factory: $RootRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'jobs',
              factory: $JobsRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: ':jobId',
                  factory: $JobDetailsRouteExtension._fromState,
                ),
              ],
            ),
            GoRouteData.$route(
              path: 'for-employers',
              factory: $ForEmployersRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $ShellRouteExtension on ShellRoute {
  static ShellRoute _fromState(GoRouterState state) => const ShellRoute();
}

extension $RootRouteExtension on RootRoute {
  static RootRoute _fromState(GoRouterState state) => const RootRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $JobsRouteExtension on JobsRoute {
  static JobsRoute _fromState(GoRouterState state) => const JobsRoute();

  String get location => GoRouteData.$location(
        '/jobs',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $JobDetailsRouteExtension on JobDetailsRoute {
  static JobDetailsRoute _fromState(GoRouterState state) => JobDetailsRoute(
        jobId: state.pathParameters['jobId']!,
      );

  String get location => GoRouteData.$location(
        '/jobs/${Uri.encodeComponent(jobId)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ForEmployersRouteExtension on ForEmployersRoute {
  static ForEmployersRoute _fromState(GoRouterState state) =>
      const ForEmployersRoute();

  String get location => GoRouteData.$location(
        '/for-employers',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
