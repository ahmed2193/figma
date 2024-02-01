import 'package:figma/core/app_export.dart';
import 'package:figma/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class StarRatingScreen extends StatelessWidget {
  const StarRatingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
                child: Column(children: [
              _buildStackImageArrowLeft(context),
              SizedBox(height: 15.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "What is ",
                                style: CustomTextStyles.titleLargeff000000),
                            TextSpan(
                                text: "Green Star Rating",
                                style: CustomTextStyles.titleLargeff109d10)
                          ]),
                          textAlign: TextAlign.left))),
              Container(
                  width: 340.h,
                  margin: EdgeInsets.only(left: 16.h, right: 18.h),
                  child: Text(
                      "In order to promote the planting of plants and greenery. We the team of planty homes is introducing the green rating concept. Where you will be awarded with coupons on the basis of plants you will purchase in a month.",
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyLargeErrorContainer
                          .copyWith(height: 1.40))),
              SizedBox(height: 30.v),
              _buildRowImageTwentyFourColumnPurchasePlantsWeWillKeepATrack(
                  context),
              SizedBox(height: 30.v),
              _buildRowBeInTheTopTenImageTwentyFive(context),
              SizedBox(height: 8.v),
              _buildStackDescriptionDecisionMakingImageTwentySixOkay(
                  context),
              SizedBox(height: 113.v),
              CustomImageView(
                  imagePath: ImageConstant.imgIconBrandJordan,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 9.h))
            ]))));
  }

  /// Section Widget
  Widget _buildStackImageArrowLeft(BuildContext context) {
    return SizedBox(
        height: 283.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.img14581308,
              height: 283.v,
              width: 375.h,
              alignment: Alignment.center),
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 20.adaptSize,
              width: 20.adaptSize,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 16.h, top: 32.v),
              onTap: () {
                onTapImgArrowLeft(context);
              })
        ]));
  }

  /// Section Widget
  Widget _buildRowImageTwentyFourColumnPurchasePlantsWeWillKeepATrack(
      BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 7.h, right: 14.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage24,
              height: 109.v,
              width: 103.h,
              radius: BorderRadius.circular(20.h),
              margin: EdgeInsets.only(top: 1.v)),
          Column(children: [
            Text("Purchase plants from our app",
                style: theme.textTheme.titleMedium),
            SizedBox(height: 7.v),
            SizedBox(
                width: 235.h,
                child: Text(
                    "We will keep a track of the  purchases from our app under your profile and will provide resutls at the end of every month.",
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumErrorContainer
                        .copyWith(height: 1.40)))
          ])
        ]));
  }

  /// Section Widget
  Widget _buildRowBeInTheTopTenImageTwentyFive(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 12.v, bottom: 6.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Be in the Top 10 Percent",
                        style: theme.textTheme.titleMedium),
                    SizedBox(height: 7.v),
                    SizedBox(
                        width: 230.h,
                        child: Text(
                            "Make sure you buy enough plants for the month that you land up in the top 10 percent.",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyMediumErrorContainer
                                .copyWith(height: 1.40)))
                  ])),
          CustomImageView(
              imagePath: ImageConstant.imgImage25, height: 108.v, width: 103.h)
        ]));
  }

  /// Section Widget
  Widget _buildStackDescriptionDecisionMakingImageTwentySixOkay(
      BuildContext context) {
    return SizedBox(
        height: 130.v,
        width: 362.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  width: 228.h,
                  margin: EdgeInsets.only(right: 13.h),
                  child: Text(
                      "First, second, third will chosen on the basis of amount of plants purchased for the month. Make sure you end up in the top 10 percent.",
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumErrorContainer
                          .copyWith(height: 1.40)))),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 128.v,
                  width: 362.h,
                  child: Stack(alignment: Alignment.bottomLeft, children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                            padding: EdgeInsets.only(top: 21.v),
                            child: Text("Decision Making",
                                style: theme.textTheme.titleMedium))),
                    CustomImageView(
                        imagePath: ImageConstant.imgImage26,
                        height: 109.adaptSize,
                        width: 109.adaptSize,
                        radius: BorderRadius.circular(20.h),
                        alignment: Alignment.bottomLeft),
                    CustomElevatedButton(
                        height: 41.v,
                        width: 362.h,
                        text: "Okay",
                        buttonStyle: CustomButtonStyles.fillPrimaryTL5,
                        buttonTextStyle: CustomTextStyles.titleMediumGray50,
                        alignment: Alignment.topCenter)
                  ])))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
