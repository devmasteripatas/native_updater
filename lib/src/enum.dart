import 'package:in_app_update/in_app_update.dart';

enum CrossPlatformAppUpdateResult {
  success,
  userDeniedUpdate,
  inAppUpdateFailed;
}

CrossPlatformAppUpdateResult fromAppUpdateResult(AppUpdateResult other) {
  switch (other) {
    case AppUpdateResult.success:
      return CrossPlatformAppUpdateResult.success;
    case AppUpdateResult.userDeniedUpdate:
      return CrossPlatformAppUpdateResult.userDeniedUpdate;
    case AppUpdateResult.inAppUpdateFailed:
      return CrossPlatformAppUpdateResult.inAppUpdateFailed;
    default:
      return CrossPlatformAppUpdateResult.inAppUpdateFailed;
  }
}
