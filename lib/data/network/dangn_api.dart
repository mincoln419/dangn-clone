import 'package:fast_app_base/common/cli_common.dart';
import 'package:fast_app_base/data/network/result/api_error.dart';
import 'package:fast_app_base/data/post_dummy.dart';
import 'package:fast_app_base/data/simple_result.dart';
import 'package:fast_app_base/entity/post/vo_product_post.dart';
import 'package:fast_app_base/screen/notification/vo/notification_dummy.dart';
import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';

class DangnApi {
  static Future<SimpleResult<List<DangnNotification>, ApiError>>
      getNotification() async {
    await sleepAsync(300.ms);
    return SimpleResult.success(notificationList);
  }

  static Future<ProductPost> getPost(int id) async {
    await sleepAsync(100.ms);
    return ProductPost(
      simpleProductPost: postList[id],
      content: "깨끗하게 쓰던 물거이에요 잘 쓰면 좋겠다. 그렇다",
    );
  }
}
