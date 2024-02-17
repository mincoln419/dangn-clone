import 'dart:math';

import 'package:fast_app_base/data/user_dummy.dart';
import 'package:fast_app_base/entity/post/vo_product_post.dart';
import 'package:fast_app_base/data/product_dummy.dart';
import 'package:fast_app_base/entity/user/vo_address.dart';

DateTime generateCreateDtm() {
  return DateTime.now().subtract(Duration(minutes: Random().nextInt(1000)));
}

final ProductPost post1 = ProductPost(
  user1,
  product1,
  "너무너무 좋아요",
  const Address("상일동 푸르지오 3층", "상일동"),
  13,
  4,
  generateCreateDtm(),
);

final ProductPost post2 = ProductPost(
  user2,
  product2,
  "너무 좋아요",
  const Address("서울특별시 역삼동 구글 한국지사 12층", "역삼동"),
  1,
  23,
  generateCreateDtm(),
);

final ProductPost post3 = ProductPost(
  user3,
  product3,
  "춘식이 좋아요",
  const Address("서울특별시 잠실 롯데월드 자이로스윙", "잠실"),
  3,
  15,
  generateCreateDtm(),
);

final ProductPost post4 = ProductPost(
  user3,
  product4,
  "메롱이다 뫄",
  const Address("서울특별시 홍제동 무악청구아파트 110동 1410호", "홍제동"),
  2,
  1,
  generateCreateDtm(),
);

final postList = [
  post1,
  post2,
  post3,
  post4,
  post1,
  post2,
];
