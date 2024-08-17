import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';

class BasePage extends StatelessWidget {
  const BasePage({
    Key? key,
    required this.title,
    required this.body,
    this.left = 16.0,
    this.top = 16.0,
    this.right = 16.0,
    this.bottom = 16.0,
  }) : super(key: key);
  final Widget body;
  final String title;
  final double left;
  final double top;
  final double right;
  final double bottom;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: AppBar(
        title: Text(title),
        backgroundColor: AppColors.appBackground,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(left.w, top.w, right.w, bottom.w),
        child: body,
      ),
    );
  }
}
