import 'package:in_app_update/in_app_update.dart';

enum CrossPlatformAppUpdateResult {
  success,
  userDeniedUpdate,
  UpdateFailed;
}

CrossPlatformAppUpdateResult fromAppUpdateResult(AppUpdateResult other) {
  switch (other) {
    case AppUpdateResult.success:
      return CrossPlatformAppUpdateResult.success;
    case AppUpdateResult.userDeniedUpdate:
      return CrossPlatformAppUpdateResult.userDeniedUpdate;
    case AppUpdateResult.inAppUpdateFailed:
      return CrossPlatformAppUpdateResult.UpdateFailed;
    default:
      return CrossPlatformAppUpdateResult.UpdateFailed;
  }
}
