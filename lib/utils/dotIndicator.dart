import 'package:flutter/material.dart';

// Use with PageView Widget
class DotIndicator<T> extends StatefulWidget {
  final List<T> pages;
  final Color? indicatorColor;
  final Color? unselectedIndicatorColor;
  final Function? onDotTap;
  final Function(int)? onPageChanged;
  final double? currentDotSize;
  final double? currentDotWidth;
  final double? dotSize;
  final BoxShape? currentBoxShape;
  final BoxShape? boxShape;

  final PageController pageController;

  final BorderRadiusGeometry? borderRadius;
  final BorderRadiusGeometry? currentBorderRadius;

  DotIndicator({
    required this.pageController,
    required this.pages,
    this.indicatorColor,
    this.unselectedIndicatorColor,
    this.onDotTap,
    this.onPageChanged,
    this.currentDotSize,
    this.currentDotWidth,
    this.dotSize,
    this.currentBoxShape,
    this.boxShape,
    this.borderRadius,
    this.currentBorderRadius,
    Key? key,
  }) : super(key: key);

  @override
  DotIndicatorState createState() => DotIndicatorState();
}

class DotIndicatorState extends State<DotIndicator> {
  int selectedIndex = 0;

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  void initState() {
    super.initState();

    widget.pageController.addListener(() {
      selectedIndex = widget.pageController.page!.round();
      widget.onPageChanged?.call(selectedIndex);

      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    //widget.pageController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 20,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: widget.pages.asMap().entries.map((entry) {
          int idx = entry.key;

          return AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: selectedIndex == idx
                ? (widget.currentDotWidth ??
                widget.currentDotSize)
                : widget.dotSize,
            width: selectedIndex == idx
                ? widget.currentDotSize
                : widget.dotSize,
            margin: EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: selectedIndex == idx
                  ? widget.currentBoxShape ?? BoxShape.circle
                  : widget.boxShape ?? BoxShape.circle,
              color: selectedIndex == idx
                  ? widget.indicatorColor ?? Colors.green
                  : widget.unselectedIndicatorColor ?? Colors.black26,
              borderRadius: selectedIndex == idx
                  ? widget.currentBorderRadius
                  : widget.borderRadius,
            ),
          );
          /*
          * onTap(() {
            selectedIndex = idx;
            widget.pageController.animateToPage(idx,
                duration: Duration(milliseconds: 300), curve: Curves.linear);

            setState(() {});

            if (widget.onDotTap != null) widget.onDotTap!(idx);
          }, borderRadius: 15);*/
        }).toList(),
      ),
    );
  }
}
