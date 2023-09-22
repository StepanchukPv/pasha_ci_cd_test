import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';

import 'package:pasha_ci_cd_test/app_state_wrapper.dart';
import 'package:pasha_ci_cd_test/router/index.dart';
import 'package:pasha_ci_cd_test/services/index.dart';
import 'package:pasha_ci_cd_test/styles/index.dart';

class PashaCiCdTest extends StatelessWidget {
  PashaCiCdTest({super.key});

  final _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return AppStateWrapper(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.getAppTheme(context),
        routerConfig: _appRouter.config(
          navigatorObservers: () => [RouterObserver(LoggerService.instance)],
        ),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
      ),
    );
  }
}
