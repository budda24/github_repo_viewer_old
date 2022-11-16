import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:repo_viewer/auth/application/auth_notifier.dart';
import 'package:repo_viewer/auth/shared/provider.dart';
import 'package:repo_viewer/core/routes/app_router.gr.dart';

import 'package:repo_viewer/starred_repos/presentation/starred_repos_page.dart';

final initializationProvider = FutureProvider<Unit>((ref) async {
  final authNotyfier = ref.read(authNotifierProvider.notifier);
  await authNotyfier.checkAndUpdateAuthState();
  return unit;
});

class AppWidget extends ConsumerWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = AppRouter();
    ref.read(initializationProvider);

    ref.listen<AuthState>(authNotifierProvider, (previous, next) {
      next.maybeMap(
        orElse: () {},
        athenticated: (_) {
          appRouter.pushAndPopUntil(
            const StarredReposRoute(),
            predicate: (_) => false,
          );
        },
        unathenticated: (_) {
          appRouter.pushAndPopUntil(
            const SignInRoute(),
            predicate: (_) => false,
          );
        },
      );
    });

    return MaterialApp.router(
      title: 'Repo Viewer',
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
