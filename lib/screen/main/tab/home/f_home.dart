import 'package:fast_app_base/common/cli_common.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/animated_arrow_up_down.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/data/post_dummy.dart';
import 'package:fast_app_base/screen/main/fab/w_floating_daangn_button.riverpod.dart';
import 'package:fast_app_base/screen/main/tab/home/w_product_post_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeFragment extends ConsumerStatefulWidget {
  const HomeFragment({super.key});

  @override
  ConsumerState<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends ConsumerState<HomeFragment> {
  final scrollController = ScrollController();
  String title = "상일동";
  bool isSelected = false;

  @override
  void initState() {
    scrollController.addListener(() {
      final floatingState = ref.read(floatingButtonStateProvider);

      if (scrollController.position.pixels > 100 && !floatingState.isSmall) {
        ref.read(floatingButtonStateProvider.notifier).changeButtonSize(true);
      } else if (scrollController.position.pixels < 100 &&
          floatingState.isSmall) {
        ref.read(floatingButtonStateProvider.notifier).changeButtonSize(false);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          title: PopupMenuButton<String>(
            position: PopupMenuPosition.under,
            onOpened: (){
              setState(() {
                isSelected = true;
              });
            },
            onCanceled: (){
              setState(() {
                isSelected = false;
              });
            },
            onSelected: (value) {
              setState(() {
                isSelected = false;
                title = value;
              });
            },
            itemBuilder: (BuildContext context) => ["천호동", "잠실", "역삼동"]
                .map((e) => PopupMenuItem(
                      value: e,
                      child: Text(e, style: TextStyle(fontSize: 20)),
                    ))
                .toList(),
            child: SizedBox(
                width: 100,
                child: Row(
                  children: [
                    Text(
                      title,
                    ),
                    AnimatedArrowUpDown(isSelected),
                  ],
                )),
          ),
        ),
        Expanded(
          child: ListView.separated(
            controller: scrollController,
            itemBuilder: (context, index) => ProductPostItem(postList[index]),
            itemCount: postList.length,
            separatorBuilder: (context, index) =>
                const Line().pSymmetric(h: 15),
          ),
        ),
      ],
    );
  }
}
