import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:greenjobs/features/authentication/presentation/view/signup_view.dart';
import 'package:greenjobs/features/jobs/presentation/view/job_details_view.dart';
import 'package:greenjobs/features/jobs/presentation/view/jobs_view.dart';
import 'package:greenjobs/features/jobs/presentation/view/jobs_view.dart';
import 'package:greenjobs/shared/widget/app_scaffold.dart';

import '../features/authentication/presentation/view/login_view.dart';
import '../features/splash/presentation/views/splash_view.dart';

part 'routes.g.dart';

final GlobalKey<NavigatorState> rootShellNavigatorKey =
    GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

@TypedGoRoute<SplashRoute>(path: SplashRoute.path)
class SplashRoute extends GoRouteData {
  const SplashRoute();
  static const path = '/splash';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SplashView();
  }
}

@TypedGoRoute<LoginRoute>(path: LoginRoute.path)
class LoginRoute extends GoRouteData {
  const LoginRoute();
  static const path = '/login';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginView();
  }
}

@TypedGoRoute<SignUpRoute>(path: SignUpRoute.path)
class SignUpRoute extends GoRouteData {
  const SignUpRoute();
  static const path = '/signup';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SignUpView();
  }
}

class RootRoute extends GoRouteData {
  static final GlobalKey<NavigatorState> $parentNavigatorKey =
      rootShellNavigatorKey;
  const RootRoute();
  static const path = '/';

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    if (state.uri.toString() == '/') {
      return '/${JobsRoute.path}';
    }
    return null;
  }

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const JobsView();
  }
}

@TypedShellRoute<ShellRoute>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<RootRoute>(path: RootRoute.path, routes: [
      TypedGoRoute<JobsRoute>(path: JobsRoute.path, routes: [
        TypedGoRoute<JobDetailsRoute>(path: JobDetailsRoute.path),
      ]),
    ])
  ],
)
class ShellRoute extends ShellRouteData {
  const ShellRoute();

  static final GlobalKey<NavigatorState> $navigatorKey = rootShellNavigatorKey;

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return AppScaffold(child: navigator);
  }
}

// class ProfileRoute extends GoRouteData {
//   static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
//   const ProfileRoute();
//   static const path = 'profile';

//   @override
//   Widget build(BuildContext context, GoRouterState state) {
//     return const ProfileView();
//   }
// }

// class CompanyProfileRoute extends GoRouteData {
//   static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
//   const CompanyProfileRoute();
//   static const path = '/company:id';

//   @override
//   Widget build(BuildContext context, GoRouterState state) {
//     return const CompanyProfileView();
//   }
// }

class JobsRoute extends GoRouteData {
  const JobsRoute();
  static const path = 'jobs';

  // static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const JobsView();
  }
}

class JobDetailsRoute extends GoRouteData {
  const JobDetailsRoute({required this.jobId});
  static const path = ':jobId';

  final String jobId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return JobDetailsView(jobId: jobId);
  }
}
