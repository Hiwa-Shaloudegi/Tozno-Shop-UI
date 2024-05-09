import 'package:flutter/material.dart';

class DotIndicator extends StatefulWidget {
  const DotIndicator({
    super.key,
    required this.pageController,
    required this.count,
    required this.spacing,
  });

  final PageController pageController;
  final int count;
  final double spacing;

  @override
  State<DotIndicator> createState() => _DotIndicatorState();
}

class _DotIndicatorState extends State<DotIndicator> {
  late double selectedIndex;

  @override
  void initState() {
    selectedIndex = widget.pageController.page!;
    super.initState();
  }

  // _changeSelectedIndex() {
  //   widget.pageController.addListener(() {
  //     setState(() {
  //       selectedIndex = widget.pageController.page!;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: widget.count,
      itemBuilder: (context, index) {
        return DotWidget(
          isSelected: index == widget.pageController.page,
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(width: widget.spacing);
      },
    );

    //   Row(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     Container(
    //       width: 10,
    //       height: 10,
    //       decoration: BoxDecoration(
    //         color: Colors.transparent,
    //         borderRadius: BorderRadius.circular(100),
    //         border: Border.all(
    //           color: Colors.white,
    //         ),
    //       ),
    //     ),
    //     const SizedBox(width: 12),
    //     Container(
    //       width: 10,
    //       height: 10,
    //       decoration: BoxDecoration(
    //         color: Colors.grey,
    //         borderRadius: BorderRadius.circular(100),
    //       ),
    //     ),
    //     const SizedBox(width: 12),
    //     Container(
    //       width: 10,
    //       height: 10,
    //       decoration: BoxDecoration(
    //         color: Colors.grey,
    //         borderRadius: BorderRadius.circular(100),
    //       ),
    //     ),
    //   ],
    // );
    //
  }
}

class DotWidget extends StatefulWidget {
  const DotWidget({
    super.key,
    this.isSelected = false,
  });
  final bool isSelected;

  @override
  State<DotWidget> createState() => _DotWidgetState();
}

class _DotWidgetState extends State<DotWidget> {
  @override
  Widget build(BuildContext context) {
    return widget.isSelected
        ? AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                color: Colors.white,
              ),
            ),
          )
        : Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(100),
            ),
          );
  }
}
