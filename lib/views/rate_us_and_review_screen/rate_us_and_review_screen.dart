import 'package:figma/core/app_export.dart';
import 'package:figma/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:figma/widgets/app_bar/appbar_title.dart';
import 'package:figma/widgets/app_bar/custom_app_bar.dart';
import 'package:figma/widgets/custom_elevated_button.dart';
import 'package:figma/widgets/custom_rating_bar.dart';
import 'package:figma/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../routers/route.dart';
import '../../widgets/containers.dart';
import 'widgets/fortyone_item_widget.dart';

class RateUsAndReviewScreen extends StatelessWidget {
  RateUsAndReviewScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController writeHerevalueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(context),
      body: SizedBox(
        width: SizeUtils.width,
        child: SingleChildScrollView(
          child: SizedBox(
            height: 728.v,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 35.v,
                    ),
                    decoration: AppDecoration.fillGray,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildExperienceSection(context),
                        SizedBox(height: 18.v),
                        _buildImpressionSection(context),
                        SizedBox(height: 20.v),
                        _buildReviewSection(context),
                        SizedBox(height: 20.v),
                      ],
                    ),
                  ),
                ),
                CustomElevatedButton(
                  height: 39.v,
                  width: 364.h,
                  text: "Submit",
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return SubmitAlertDialog();
                      },
                    );
                  },
                  margin: EdgeInsets.only(bottom: 5.v),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL5,
                  buttonTextStyle:
                      CustomTextStyles.titleMediumPrimaryContainerBold,
                  alignment: Alignment.bottomCenter,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 44.v,
      leadingWidth: 37.h,
      leading: AppbarLeadingIconbutton(
        onTap: (){
           context.push(Routes.gift);
        },
        imagePath: ImageConstant.imgClose,
        margin: EdgeInsets.only(
          left: 15.h,
          top: 8.v,
          bottom: 12.v,
        ),
      ),
      title: AppbarTitle(
        text: "Nursery 1",
        margin: EdgeInsets.only(left: 12.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildExperienceSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Column(
              children: [
                Text(
                  "My experience was excellent",
                  style: CustomTextStyles.titleMediumBold,
                ),
                SizedBox(height: 2.v),
                CustomRatingBar(
                  initialRating: 5,
                  itemSize: 47,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage23,
            height: 46.adaptSize,
            width: 46.adaptSize,
            margin: EdgeInsets.only(
              top: 25.v,
              right: 19.h,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildImpressionSection(BuildContext context) {
    return Container(
      width: 358.h,
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Text(
            "What impressed you the most?",
            style: CustomTextStyles.titleMediumBold,
          ),
          SizedBox(height: 15.v),
          Align(
            alignment: Alignment.center,
            child: Wrap(
              runSpacing: 24.v,
              spacing: 24.h,
              children: List<Widget>.generate(
                  4, (index) => const FortyoneItemWidget()),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReviewSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 21.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "Add detailed review",
              style: CustomTextStyles.titleMediumBold,
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(
              left: 2.h,
              right: 4.h,
            ),
            child: CustomTextFormField(
              controller: writeHerevalueController,
              hintText: "Write Here",
              hintStyle: CustomTextStyles.bodySmallErrorContainer,
              textInputAction: TextInputAction.done,
              fillColor: Colors.transparent,
              maxLines: 5,
            ),
          ),
          SizedBox(height: 6.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCameraAddSvg1,
                height: 27.adaptSize,
                width: 27.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 4.h,
                  top: 5.v,
                  bottom: 6.v,
                ),
                child: Text(
                  "Add Photo",
                  style: CustomTextStyles.bodySmallPrimary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
