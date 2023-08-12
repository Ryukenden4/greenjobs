import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:greenjobs/routes/router_listenable.dart';
import 'package:greenjobs/routes/routes.dart';

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(routerListenableProvider.notifier);

    final router = GoRouter(
        navigatorKey: rootNavigatorKey,
        refreshListenable: notifier,
        initialLocation: SplashRoute.path,
        routes: $appRoutes,
        redirect: notifier.redirect);

    return MaterialApp.router(
      title: 'Green Jobs',
      theme: ThemeData(primarySwatch: Colors.green, useMaterial3: true),
      routerConfig: router,
      builder: (context, child) => Scaffold(
        resizeToAvoidBottomInset: false,
        body: child,
      ),
    );
  }
}
