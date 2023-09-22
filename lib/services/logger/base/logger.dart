import 'dart:async';

import 'package:pasha_ci_cd_test/models/index.dart';

abstract class Logger {
  Future<void> init() async {}

  void registerUserProfile(UserProfile userProfile) {}

  void log(String message, {String? category});

  void logInfo(String message);

  void logWarning(String message);

  void logError(Object exception, [dynamic stackTrace]);
}
