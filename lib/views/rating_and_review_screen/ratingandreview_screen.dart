import 'package:figma/core/app_export.dart';
import 'package:figma/widgets/app_bar/appbar_leading_image.dart';
import 'package:figma/widgets/app_bar/appbar_subtitle.dart';
import 'package:figma/widgets/app_bar/appbar_trailing_image.dart';
import 'package:figma/widgets/app_bar/custom_app_bar.dart';
import 'package:figma/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../routers/route.dart';
import '../../widgets/search_bar.dart';

class RatingAndReviewScreen extends StatefulWidget {
  RatingAndReviewScreen({Key? key}) : super(key: key);

  @override
  State<RatingAndReviewScreen> createState() => _RatingAndReviewScreenState();
}

class _RatingAndReviewScreenState extends State<RatingAndReviewScreen>
    with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  late TabController tabviewController;
  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
            width: SizeUtils.width,
            child: SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsets.only(bottom: 5.v, top: 12),
                    child: Column(children: [
                      _buildRow1(context),
                      SizedBox(height: 25.v),
                      _buildRow2(context),
                      SizedBox(height: 27.v),
                      Divider(color: appTheme.blueGray10002),
                      SizedBox(height: 18.v),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: SearchBarTemplate(
                          "Search in reviews",
                          suffixIcon: SizedBox(),
                        ),
                      ),
                      SizedBox(height: 19.v),
                      _buildTabview(context),
                      SizedBox(
                          height: 411.v,
                          child: TabBarView(
                              controller: tabviewController,
                              children: [
                                _tabBarBody(context),
                                _tabBarBody(context),
                                _tabBarBody(context),
                                _tabBarBody(context),
                              ])),
                    ])))),
        bottomNavigationBar: _buildButton3(context));
  }

  Column _tabBarBody(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 14.v),
        _buildNinety(context),
        SizedBox(height: 13.v),
        Container(
            width: 341.h,
            margin: EdgeInsets.only(left: 16.h, right: 17.h),
            child: Text(
                "Plants were nicely packed and all the plants were \nin good conditions totally worth it!",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyLarge!.copyWith(height: 1.75))),
        SizedBox(height: 19.v),
        Divider(color: appTheme.blueGray10002),
        SizedBox(height: 7.v),
        _buildEightySix(context),
        SizedBox(height: 6.v),
        Divider(color: appTheme.blueGray10002),
        SizedBox(height: 12.v),
        _buildNinety(context),
        SizedBox(height: 20.v),
        Container(
            width: 341.h,
            margin: EdgeInsets.only(left: 16.h, right: 17.h),
            child: Text(
                "Plants were nicely packed and all the plants were \nin good conditions totally worth it!",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyLarge!.copyWith(height: 1.75)))
      ],
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 36.h,
        leading: AppbarLeadingImage(
            color: Colors.black,
            imagePath: ImageConstant.imgArrowLeftPrimary,
            margin: EdgeInsets.only(left: 16.h, top: 18.v, bottom: 20.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
            text: "Nursery 1", margin: EdgeInsets.only(left: 13.h)),
        actions: [
          AppbarTrailingImage(
              color: Colors.black,
              imagePath: ImageConstant.imgBookmark,
              margin: EdgeInsets.fromLTRB(7.h, 19.v, 15.h, 5.v)),
          AppbarTrailingImage(
              color: Colors.black,
              imagePath: ImageConstant.imgImageProcessin26x26,
              margin: EdgeInsets.only(left: 11.h, top: 14.v, right: 22.h))
        ]);
  }

  /// Section Widget
  Widget _buildButton(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xff109D10),
          border: Border.all(width: 1, color: Color(0xff109D10)),
          borderRadius: BorderRadius.circular(5)),
      width: 50.h,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '4.5',
            style: TextStyle(color: Colors.white, fontSize: 12.0),
          ),
          SizedBox(width: 4),
          Icon(Icons.star, color: Colors.white, size: 16),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRow1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 12.h, right: 6.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          _buildButton(context),
          Padding(
              padding: EdgeInsets.only(left: 8.h, top: 3.v),
              child: Text("3,375 RATED ",
                  style: CustomTextStyles.titleSmallBluegray40002)),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "How",
                        style: CustomTextStyles.titleSmallff89898b),
                    TextSpan(
                        text: " are Rattings Calculated",
                        style: CustomTextStyles.titleSmallff89898b),
                    TextSpan(
                        text: " ?", style: CustomTextStyles.titleSmallff89898b)
                  ]),
                  textAlign: TextAlign.left))
        ]));
  }

  /// Section Widget
  Widget _buildRow2(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h, right: 7.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              width: 157.h,
              child: Text(
                  "Health Of Plant\nPlant size & Condition\nPackaging\nValue For Money",
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge!.copyWith(height: 1.75))),
          Padding(
              padding: EdgeInsets.only(left: 10.h, top: 7.v, bottom: 7.v),
              child: Column(children: [
                Container(
                    height: 7.v,
                    width: 156.h,
                    decoration: BoxDecoration(
                        color: appTheme.blueGray10002,
                        borderRadius: BorderRadius.circular(3.h)),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(3.h),
                        child: LinearProgressIndicator(
                            value: 0.74,
                            backgroundColor: appTheme.blueGray10002,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                theme.colorScheme.primary)))),
                SizedBox(height: 20.v),
                Container(
                    height: 7.v,
                    width: 156.h,
                    decoration: BoxDecoration(
                        color: appTheme.blueGray10002,
                        borderRadius: BorderRadius.circular(3.h)),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(3.h),
                        child: LinearProgressIndicator(
                            value: 0.79,
                            backgroundColor: appTheme.blueGray10002,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                theme.colorScheme.primary)))),
                SizedBox(height: 24.v),
                Container(
                    height: 7.v,
                    width: 156.h,
                    decoration: BoxDecoration(
                        color: appTheme.blueGray10002,
                        borderRadius: BorderRadius.circular(3.h)),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(3.h),
                        child: LinearProgressIndicator(
                            value: 0.74,
                            backgroundColor: appTheme.blueGray10002,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                theme.colorScheme.primary)))),
                SizedBox(height: 19.v),
                Container(
                    height: 7.v,
                    width: 156.h,
                    decoration: BoxDecoration(
                        color: appTheme.blueGray10002,
                        borderRadius: BorderRadius.circular(3.h)),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(3.h),
                        child: LinearProgressIndicator(
                            value: 0.53,
                            backgroundColor: appTheme.blueGray10002,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                theme.colorScheme.primary))))
              ])),
          Container(
              width: 23.h,
              margin: EdgeInsets.only(left: 6.h),
              child: Text("3.2\n3.3\n3.2\n2.1",
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge!.copyWith(height: 1.75)))
        ]));
  }

  /// Section Widget
  Widget _buildButton1(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xff109D10),
          border: Border.all(width: 1, color: Color(0xff109D10)),
          borderRadius: BorderRadius.circular(5)),
      width: 50.h,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '4.5',
            style: TextStyle(color: Colors.white, fontSize: 12.0),
          ),
          SizedBox(width: 4),
          Icon(Icons.star, color: Colors.white, size: 16),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRow4(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 14.h, right: 11.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgPngClipartPro,
              height: 40.adaptSize,
              width: 40.adaptSize,
              margin: EdgeInsets.only(bottom: 1.v)),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Deepika",
                              style: CustomTextStyles.titleMediumOnPrimary),
                          _buildButton1(context)
                        ]),
                    SizedBox(height: 4.v),
                    _buildRow(context, name: "Verified order")
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildEightySix(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 11.h, right: 4.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: _buildStack(context,
                  image1: ImageConstant.imgImageProcessin15x15,
                  image2: ImageConstant.imgImageProcessin15x15)),
          Padding(
              padding: EdgeInsets.only(left: 5.h, top: 2.v),
              child: Text("Helpful", style: theme.textTheme.bodySmall)),
          Spacer(),
          SizedBox(
              width: 49.h,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildStack(context,
                        image1: ImageConstant.imgImageProcessin26x26,
                        image2: ImageConstant.imgImageProcessin26x26),
                    Text("Share", style: theme.textTheme.bodySmall)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildButton2(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xff109D10),
          border: Border.all(width: 1, color: Color(0xff109D10)),
          borderRadius: BorderRadius.circular(5)),
      width: 50.h,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '4.5',
            style: TextStyle(color: Colors.white, fontSize: 12.0),
          ),
          SizedBox(width: 4),
          Icon(Icons.star, color: Colors.white, size: 16),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNinety(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 14.h, right: 11.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgPngClipartPro,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        alignment: Alignment.center),
                    CustomImageView(
                        imagePath: ImageConstant.imgPngClipartPro,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        alignment: Alignment.center)
                  ])),
              Padding(
                  padding: EdgeInsets.only(left: 8.h, bottom: 21.v),
                  child: Text("Deepika",
                      style: CustomTextStyles.titleMediumOnPrimary)),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Column(children: [
                    _buildButton2(context),
                    SizedBox(height: 8.v),
                    _buildRow(context, name: "Verified order")
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildButton3(BuildContext context) {
    return CustomElevatedButton(
        height: 47.v,
        text: "Write a review",
        decoration:
            BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12))),
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 17.v),
        buttonStyle: CustomButtonStyles.fillPrimary,
        buttonTextStyle: CustomTextStyles.titleMediumGray50,
        onPressed: () {
          onTapButton(context);
        });
  }

  /// Common widget
  Widget _buildStack(
    BuildContext context, {
    required String image1,
    required String image2,
  }) {
    return SizedBox(
        height: 15.adaptSize,
        width: 15.adaptSize,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: image1,
              height: 15.adaptSize,
              width: 15.adaptSize,
              alignment: Alignment.center),
          CustomImageView(
              imagePath: image2,
              height: 15.adaptSize,
              width: 15.adaptSize,
              alignment: Alignment.center)
        ]));
  }

  /// Common widget
  Widget _buildRow(
    BuildContext context, {
    required String name,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          height: 12.adaptSize,
          width: 12.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 1.v),
          child: Stack(alignment: Alignment.center, children: [
            CustomImageView(
                imagePath: ImageConstant.imgImage18,
                height: 12.adaptSize,
                width: 12.adaptSize,
                alignment: Alignment.center),
            CustomImageView(
                imagePath: ImageConstant.imgImage18,
                height: 12.adaptSize,
                width: 12.adaptSize,
                alignment: Alignment.center)
          ])),
      Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: Text(name,
              style: theme.textTheme.bodySmall!
                  .copyWith(color: theme.colorScheme.onPrimary)))
    ]);
  }

  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 30.v,
        width: 361.h,
        child: TabBar(controller: tabviewController, isScrollable: true, tabs: [
          Tab(child: Text("Filter")),
          Tab(child: Text("Relevance")),
          Tab(child: Text("Verified")),
          Tab(child: Text("With Photos")),
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the RateUsScreen when the action is triggered.
  onTapButton(BuildContext context) {
context.push(Routes.rateusScreen);  }
}
