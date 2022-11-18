import 'package:auto_route/auto_route.dart';
import 'package:repo_viewer/auth/presentation/sign_in_page.dart';
import 'package:repo_viewer/splash/presentation/splash_page.dart';
import 'package:repo_viewer/starred_repos/presentation/starred_repos_page.dart';

import '../../auth/presentation/authorization_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(
      page: StarredReposPage,
      path: '/starred-repos',
    ),
    AutoRoute(page: SignInPage, path: '/sin-in'),
    AutoRoute(page: AthorizationPage, path: '/auth'),
  ],
)
class $AppRouter {}
