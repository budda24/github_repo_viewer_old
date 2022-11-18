import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:repo_viewer/auth/shared/provider.dart';

import 'package:repo_viewer/core/routes/app_router.gr.dart';

class SignInPage extends ConsumerWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Icon(
                    MdiIcons.github,
                    size: 90,
                  ),
                  Text(
                    'Welcome to\n Repo Vier',
                    style: Theme.of(context).textTheme.headline3,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      final compliter = Completer<Uri>();
                      ref
                          .read(authNotifierProvider.notifier)
                          .sihIn((authorizationUri) {
                        AutoRouter.of(context).push(
                          AthorizationRoute(
                            onAuthorizationCodeRedirectAttempt:
                                (authorizationUri) {
                              compliter.complete(authorizationUri);
                            },
                            authorizationUrl: authorizationUri,
                          ),
                        );
                        return compliter.future;
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                    child: const Text('Sign in'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
