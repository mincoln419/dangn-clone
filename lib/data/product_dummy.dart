import 'package:fast_app_base/data/user_dummy.dart';
import 'package:fast_app_base/entity/product/product_status.dart';

import '../entity/product/vo_product.dart';

final product1 =
    Product(user1, "아이폰13", 1200000, "최신형아이폰입니다", ProductStatus.normal, [picSum(300), picSum(400)]);
final product2 =
    Product(user1, "맥북프로M3", 1200000, "최신형맥북입니다", ProductStatus.booked, [picSum(500), picSum(600)]);
final product3 =
    Product(user2, "아이리버MP3", 1200000, "옛날 감성의 mp3 플레이어 입니다.", ProductStatus.complete, [picSum(700), picSum(550)]);
final product4 =
    Product(user3, "Lucene In Action", 1200000, "검색엔진 공부하기 좋은 책 추천입니다.", ProductStatus.booked,[picSum(400), picSum(222)]);
