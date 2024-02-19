import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/entity/post/vo_simple_product_post.dart';
import 'package:fast_app_base/entity/user/vo_user.dart';
import 'package:fast_app_base/screen/post_detail/product_post_provider.dart';
import 'package:fast_app_base/screen/post_detail/w_post_content.dart';
import 'package:fast_app_base/screen/post_detail/w_user_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../entity/post/vo_product_post.dart';

class PostDetailScreen extends ConsumerWidget {
  final SimpleProductPost? simpleProductPost;
  final int id;


  const PostDetailScreen(
    this.id, {
    super.key,
    this.simpleProductPost,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productPost = ref.watch(productPostProvider(id));

    return productPost.when(
      data: (data){
        //return CachedNetworkImage(imageUrl: data.simpleProductPost.product.images[0]);
        return _PostDetail(data.simpleProductPost, productPost: data);
      },
      error: (err, stack) => "에러발생".text.make(),
      loading: () => simpleProductPost != null? _PostDetail(simpleProductPost!)
          : Center(child: CircularProgressIndicator(),),
    );

  }
}

class _PostDetail extends HookWidget {
  final SimpleProductPost simpleProductPost;
  final ProductPost? productPost;

  const _PostDetail(this.simpleProductPost, {this.productPost, super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              _ImagePager(pageController: pageController, simpleProductPost: simpleProductPost),
              UserProfileWidget(simpleProductPost.product.user),
              PostContentWidget(simpleProductPost: simpleProductPost, productPost: productPost,),
              
            ],
          ),
        ),
        _AppBar(),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 100,
            color: Colors.blue,
          )
        ),
      ],
    );
  }
}



class _ImagePager extends StatelessWidget {
  const _ImagePager({
    super.key,
    required this.pageController,
    required this.simpleProductPost,
  });

  final PageController pageController;
  final SimpleProductPost simpleProductPost;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.deviceWidth,
      child: Stack(
        children: [
          PageView(
            controller: pageController,
            children:
              simpleProductPost.product.images.map(
                  (url) => CachedNetworkImage(imageUrl: url,fit: BoxFit.fill)
              ).toList(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SmoothPageIndicator(
              controller: pageController,
              count: simpleProductPost.product.images.length,
              effect: const JumpingDotEffect(
                verticalOffset: 10,
                dotColor: Colors.white24,
                activeDotColor: Colors.black45,
              ),
              onDotClicked: (index){
                pageController.jumpToPage(index);
              },
            )
          )
        ],
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60 + context.statusBarHeight,
      child: AppBar(
        leading: IconButton(
          onPressed: (){
            Nav.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white,),
        ),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.share, color: Colors.white,)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert, color: Colors.white,)),
        ],
      ),
    );
  }
}
