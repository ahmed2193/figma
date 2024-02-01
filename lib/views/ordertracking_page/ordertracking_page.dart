import 'package:figma/core/app_export.dart';
import 'package:figma/widgets/app_bar/appbar_leading_image.dart';
import 'package:figma/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:figma/widgets/app_bar/appbar_trailing_image.dart';
import 'package:figma/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class OrdertrackingPage extends StatelessWidget {
  const OrdertrackingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: AppDecoration.fillPrimaryContainer,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(child: _buildStatusBarIPhone(context)),
            // SizedBox(height: 17.v),
            Expanded(
              flex: 2,
              child: SingleChildScrollView(
                child: SizedBox(
                  height: 505.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage16,
                        height: 415.v,
                        width: 375.h,
                        alignment: Alignment.topCenter,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 216.h,
                          margin: EdgeInsets.only(right: 54.h, bottom: 21.v),
                          child: Row(
                            children: [
                              
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Need help with your order?\n",
                                      style: CustomTextStyles.titleMediumff000000,
                                    ),
                                    TextSpan(
                                      text: "Get help & support>",
                                      style: CustomTextStyles.titleSmallffff0000,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage17,
                        height: 91.adaptSize,
                        width: 91.adaptSize,
                        alignment: Alignment.bottomLeft,
                        
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusBarIPhone(BuildContext context) {
    return SizedBox(
      // height: 184.v,
      width: double.maxFinite,
      child: Stack(alignment: Alignment.center, children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            decoration: AppDecoration.fillPrimary,
            // child: CustomImageView(
            //   imagePath: ImageConstant.imgRectangle22150,
            //   height: 1.v,
            //   width: 375.h,
            // ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(
              top: 20.v,
              left: 6.h, right: 9.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomAppBar(
                  height: 26.v,
                  leadingWidth: 26.h,
                  leading: AppbarLeadingImage(
                    imagePath: ImageConstant.imgArrowLeft,
                    margin: EdgeInsets.only(left: 6.h, bottom: 11.v),
                    onTap: () {
                      onTapArrowLeft(context);
                    },
                  ),
                  centerTitle: true,
                  title: AppbarSubtitleOne(text: "Order from\nNursery 1"),
                  actions: [
                    AppbarTrailingImage(
                      imagePath: ImageConstant.imgImageProcessin,
                      margin: EdgeInsets.symmetric(horizontal: 9.h),
                    ),
                  ],
                ),
                SizedBox(height: 1.v),
                Text(
                  "Order is on the way",
                  style: CustomTextStyles.headlineMediumPrimaryContainer,
                ),
                SizedBox(height: 2.v),
                CustomImageView(
                  imagePath: ImageConstant.imgOrganicFlatHo,
                  height: 80.v,
                  width: 88.h,
                ),
                SizedBox(height: 16.v),
                SizedBox(
                  height: 24.v,
                  width: 311.h,
                  child: Stack(alignment: Alignment.topCenter, children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Arriving in 2 minutes",
                        style: CustomTextStyles.titleLargePrimaryContainer,
                      ),
                    ),
                    Opacity(
                      opacity: 0.20065889,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: SizedBox(
                            width: 311.h,
                            child: Divider(
                              color: appTheme.gray500.withOpacity(0.42),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
