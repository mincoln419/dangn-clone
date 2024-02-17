import 'package:fast_app_base/common/cli_common.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:flutter/material.dart';

class AnimatedArrowUpDown extends StatefulWidget {
  final bool isSelected;
  const AnimatedArrowUpDown(this.isSelected, {super.key});

  @override
  State<AnimatedArrowUpDown> createState() => _AnimatedArrowUpDownState();
}

class _AnimatedArrowUpDownState extends State<AnimatedArrowUpDown> {
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: const Arrow(
        size: 30,
        direction: AxisDirection.up,
      ),
      secondChild: const Arrow(
        size: 30,
        direction: AxisDirection.down,
      ),
      crossFadeState: widget.isSelected ? CrossFadeState.showFirst:CrossFadeState.showSecond,
      duration: 300.ms,
    );
  }
}
