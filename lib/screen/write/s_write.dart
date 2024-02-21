import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import '../../common/widget/w_round_button.dart';

class WriteScreen extends StatefulWidget {
  const WriteScreen({super.key});

  @override
  State<WriteScreen> createState() => _WriteScreenState();
}

class _WriteScreenState extends State<WriteScreen> {
  final List<String> imageList = [];
  final titleController = TextEditingController();
  final priceController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: '내 물건 팔기'.text.bold.make(),
        actions: [
          Tap(
            onTap: () {},
            child: '임시저장'.text.make().p(15),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _ImageSelectWidget(
              imageList,
              onTap: () {},
            ),
            _TitleEditor(titleController),
            height30,
            _PriceEditor(priceController),
            _DescriptionEditor(descriptionController),
          ],
        ).pSymmetric(
          h: 15,
        ),
      ),
      bottomSheet: RoundButton(
        text: '작성 완료',
        isFullWidth: true,
        borderRadius: 6,
        onTap: () {},
      ),
    );
  }
}

class _DescriptionEditor extends StatelessWidget {
  final TextEditingController controller;

  const _DescriptionEditor(
    this.controller, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container();
  }
}

class _PriceEditor extends StatefulWidget {
  final TextEditingController controller;

  const _PriceEditor(
    this.controller, {
    super.key,
  });

  @override
  State<_PriceEditor> createState() => _PriceEditorState();
}

class _PriceEditorState extends State<_PriceEditor> {
  bool isDonateMode = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        '거래방식'.text.bold.make(),
        Row(
          children: [
            RoundButton(
                text: '판매하기',
                onTap: () {
                  setState() {
                    isDonateMode = false;
                  }

                  ;
                }),
            RoundButton(
              text: '나눔하기',
              onTap: () {
                setState(() {
                  isDonateMode = true;
                });

              },
            ),
          ],
        ),
        height5,
        TextField(
          controller: widget.controller,
          decoration: const InputDecoration(
            hintText: '￦ 가격을 입력해주세요.',
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.orange,
            )),
            border: OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.grey,
            )),
          ),
        ),
      ],
    );
  }
}

class _TitleEditor extends StatelessWidget {
  final TextEditingController controller;

  const _TitleEditor(
    this.controller, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        '제목'.text.bold.make(),
        height5,
        TextField(
          controller: controller,
          decoration: const InputDecoration(
            hintText: '제목',
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.orange,
            )),
            border: OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.grey,
            )),
          ),
        ),
      ],
    );
  }
}

class _ImageSelectWidget extends StatelessWidget {
  final List<String> imageList;
  final VoidCallback onTap;

  const _ImageSelectWidget(
    this.imageList, {
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: 80,
                height: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.camera_alt),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: imageList.length.toString(),
                        style: const TextStyle(color: Colors.grey),
                      ),
                      const TextSpan(
                        text: "/10",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ]))
                  ],
                ).box.rounded.border(color: Colors.grey).make(),
              ),
            ],
          ),
        ));
  }
}
