import 'package:Transrentals/core/constants/app_text_styles.dart';
import 'package:Transrentals/core/constants/colors.dart';
import 'package:Transrentals/features/login/controller.dart';
import 'package:Transrentals/gen/assets.gen.dart';
import 'package:Transrentals/global_widgets/app_bar/common_app_bar.dart';
import 'package:Transrentals/global_widgets/bottom_navigation/without_login_bottom_navigation.dart';
import 'package:Transrentals/global_widgets/drawer/without_login_drawer.dart';
import 'package:Transrentals/routes/routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class LoginPage extends GetWidget<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getCommonAppBar(),
      drawer: WithoutLoginDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(40.h),
              Center(
                child: Text(
                  'Login',
                  style: AppTextStyles.textStyleSemiBold.copyWith(
                    fontSize: 24.sp,
                    color: AppColors.textColor,
                  ),
                ),
              ),
              Gap(25.h),
              Container(
                color: AppColors.divider,
                height: 2.h,
              ),
              Gap(36.h),
              Text('Phone Number',
                  style: AppTextStyles.textStyleSemiBold.copyWith(
                    fontSize: 16.sp,
                    color: AppColors.black,
                  )),
              Gap(7.h),
              SizedBox(
                height: 46.h,
                child: TextField(
                  controller: controller.mobileController,
                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.black, width: 0.5),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.black, width: 0.5),
                    ),
                    hintText: '9876543210',
                    hintStyle: AppTextStyles.textStyleSemiBold.copyWith(
                      color: AppColors.black.withOpacity(0.5),
                      fontSize: 15.sp,
                    ),
                    isDense: true,
                    prefixIcon: Container(
                      margin: EdgeInsets.only(right: 12.w),
                      padding: EdgeInsets.symmetric(
                          horizontal: 11.w, vertical: 13.h),
                      decoration: BoxDecoration(
                          color: AppColors.TFPrefixBG,
                          border:
                              Border.all(color: AppColors.black, width: 0.5),
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(4.0), right: Radius.zero)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '+91',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.textStyleRegular.copyWith(
                              fontSize: 14.sp,
                              color: AppColors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 30.h,
                          width: 0.5,
                          color: AppColors.border,
                        ),
                        Gap(16.w),
                        SvgPicture.asset(
                          Assets.svgs.icPhone,
                          height: 20.h,
                          width: 20.w,
                        ),
                        Gap(16.w),
                      ],
                    ),
                    contentPadding: EdgeInsets.only(left: 0.w, top: 13.h),
                  ),
                  keyboardType: TextInputType.number,
                  style: AppTextStyles.textStyleSemiBold.copyWith(
                    color: AppColors.black,
                    fontSize: 15.sp,
                  ),
                ),
              ),
              Gap(34.h),
              ElevatedButton(
                onPressed: () {
                  controller.validateAndCallAPI();
                },
                style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.zero),
                ),
                child: Container(
                  height: 48.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.btnColor,
                    borderRadius: BorderRadius.circular(5.0.r),
                  ),
                  child: Text(
                    'Send OTP',
                    style: AppTextStyles.textStyleSemiBold.copyWith(
                      fontSize: 18.sp,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
              Gap(40.h),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      height: 0.5,
                      color: AppColors.black.withOpacity(.5),
                    ),
                  ),
                  Gap(10.w),
                  Text(
                    'Or',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.textStyleMedium.copyWith(
                      fontSize: 14.sp,
                      color: AppColors.black,
                    ),
                  ),
                  Gap(10.w),
                  Expanded(
                    child: Container(
                      height: 0.5,
                      color: AppColors.black.withOpacity(.5),
                    ),
                  ),
                ],
              ),
              Gap(40.h),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Need an account?  ',
                        style: AppTextStyles.textStyleLight.copyWith(
                          color: AppColors.black,
                          fontSize: 14.sp,
                        ),
                      ),
                      TextSpan(
                        text: ' Sign up',
                        style: AppTextStyles.textStyleRegular.copyWith(
                          color: Color(0xFF0F57E8),
                          fontSize: 14.sp,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.offAllNamed(
                              Routes.signUp,
                            );
                          },
                      ),
                    ],
                  ),
                ),
              ),
              Gap(40.h),
            ],
          ),
        ),
      ),
      bottomNavigationBar: WithoutLoginBottomNavigation(),
    );
  }
}
