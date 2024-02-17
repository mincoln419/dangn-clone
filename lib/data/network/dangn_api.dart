import 'package:fast_app_base/common/cli_common.dart';
import 'package:fast_app_base/data/network/result/api_error.dart';
import 'package:fast_app_base/data/simple_result.dart';
import 'package:fast_app_base/screen/notification/vo/notification_dummy.dart';
import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';

class DangnApi {
  static Future<SimpleResult<List<DangnNotification>, ApiError>> getNotification() async {
    await sleepAsync(300.ms);
    return SimpleResult.success(notificationList);
  }
}