import 'package:figma/core/app_export.dart';
import 'package:figma/widgets/custom_elevated_button.dart';
import 'package:figma/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PaymentMethodScreen extends StatelessWidget {
  PaymentMethodScreen({Key? key}) : super(key: key);

  TextEditingController enterUPIIDController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appTheme.gray5001,
        resizeToAvoidBottomInset: false,
        body: SizedBox.expand(
            // width: double.maxFinite,
            child: Column(children: [
          SizedBox(height: 19.v),
          Expanded(
              child: SingleChildScrollView(
                  child: Container(
                      margin: EdgeInsets.only(bottom: 48.v),
                      padding: EdgeInsets.symmetric(horizontal: 8.h),
                      child: Column(children: [
                        SizedBox(height: 30.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgArrowLeftPrimary,
                                      height: 19.v,
                                      width: 20.h,
                                      onTap: () {
                                        onTapImgArrowLeft(context);
                                      }),
                                  Container(
                                      height: 13.v,
                                      width: 135.h,
                                      margin: EdgeInsets.only(
                                          left: 15.h,
                                          top: 3.v,
                                          bottom: 2.v),
                                      child: Stack(
                                          alignment: Alignment.centerRight,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgName,
                                                height: 13.v,
                                                width: 135.h,
                                                alignment:
                                                    Alignment.center),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgSettingsErrorcontainer12x9,
                                                height: 12.v,
                                                width: 9.h,
                                                alignment:
                                                    Alignment.centerRight,
                                                margin: EdgeInsets.only(
                                                    right: 47.h))
                                          ]))
                                ]))),
                        SizedBox(height: 29.v),
                        Text("RECOMMENDED",
                            style: CustomTextStyles.titleMediumOnError),
                        SizedBox(height: 24.v),
                        _buildSettingsStack(context),
                        SizedBox(height: 25.v),
                        _buildEnterUPIIDStack(context),
                        SizedBox(height: 16.v),
                        Text("Cards",
                            style: CustomTextStyles.titleMediumOnError),
                        SizedBox(height: 15.v),
                        _buildCardsStack(context),
                        SizedBox(height: 22.v),
                        Text("Others",
                            style: CustomTextStyles.titleMediumOnError),
                        SizedBox(height: 15.v),
                        _buildOthersRow(context)
                      ]))))
        ])));
  }
  /// Section Widget
  Widget _buildSettingsColumn(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 13.v),
            decoration: AppDecoration.fillPrimaryContainer
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Column(mainAxisSize: MainAxisSize.max, children: [
              Padding(
                  padding: EdgeInsets.only(left: 10.h, right: 5.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgImage27,
                            height: 47.v,
                            width: 88.h,
                            margin: EdgeInsets.only(bottom: 8.v)),
                        Spacer(flex: 35),
                        Container(
                            height: 50.v,
                            width: 84.h,
                            margin: EdgeInsets.only(top: 5.v),
                            child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                          width: 84.h,
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "Paytm\n",
                                                    style: CustomTextStyles
                                                        .titleMediumff000000_1),
                                                TextSpan(
                                                    text: "Balance:    1246",
                                                    style: CustomTextStyles
                                                        .labelLargeff847e7eMedium)
                                              ]),
                                              textAlign: TextAlign.left))),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgVector,
                                      height: 7.v,
                                      width: 5.h,
                                      alignment: Alignment.bottomRight,
                                      margin: EdgeInsets.only(
                                          right: 30.h, bottom: 14.v))
                                ])),
                        Spacer(flex: 64),
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowRight,
                            height: 19.v,
                            width: 20.h,
                            margin: EdgeInsets.only(top: 11.v, bottom: 24.v))
                      ])),
              SizedBox(height: 4.v),
              Divider(endIndent: 5.h),
              SizedBox(height: 16.v),
              Padding(
                  padding: EdgeInsets.only(left: 13.h, right: 5.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgImage28,
                            height: 36.v,
                            width: 102.h),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 26.h, top: 7.v, bottom: 6.v),
                            child: Text("Razorpay",
                                style: theme.textTheme.titleMedium)),
                        Spacer(),
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowRightPrimary,
                            height: 19.v,
                            width: 20.h,
                            margin: EdgeInsets.only(top: 3.v, bottom: 12.v))
                      ])),
              SizedBox(height: 16.v),
              Divider(endIndent: 5.h),
              SizedBox(height: 12.v),
              Padding(
                  padding: EdgeInsets.only(left: 20.h, right: 5.h),
                  child: _buildSixtyEight(context,
                      text: "Phonepe",
                      arrowRight: ImageConstant.imgArrowRight)),
            ])));
  }

  /// Section Widget
  Widget _buildSettingsStack(BuildContext context) {
    return SizedBox(
        height: 240.v,
        width: 358.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgSettingsErrorcontainer12x9,
              height: 12.v,
              width: 9.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 121.h, top: 39.v)),
          _buildSettingsColumn(context)
        ]));
  }

  /// Section Widget
  Widget _buildSeventyFour(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text("UPI", style: CustomTextStyles.titleMediumOnError),
          SizedBox(height: 15.v),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 14.v),
              decoration: AppDecoration.fillPrimaryContainer
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                SizedBox(
                    height: 55.v,
                    width: 313.h,
                    child: Stack(alignment: Alignment.topCenter, children: [
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                              width: 84.h,
                              margin: EdgeInsets.only(right: 103.h),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Paytm\n",
                                        style: CustomTextStyles
                                            .titleMediumff000000_1),
                                    TextSpan(
                                        text: "Balance:    1246",
                                        style: CustomTextStyles
                                            .labelLargeff847e7eMedium)
                                  ]),
                                  textAlign: TextAlign.left))),
                      Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 8.v),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgImage27,
                                        height: 47.v,
                                        width: 88.h),
                                    Spacer(flex: 43),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgVector,
                                        height: 7.v,
                                        width: 5.h,
                                        margin: EdgeInsets.only(
                                            top: 33.v, bottom: 5.v)),
                                    Spacer(flex: 57),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgArrowRight,
                                        height: 19.v,
                                        width: 20.h,
                                        margin: EdgeInsets.only(
                                            top: 17.v, bottom: 9.v))
                                  ])))
                    ])),
                SizedBox(height: 1.v),
                Divider(endIndent: 5.h),
                SizedBox(height: 18.v),
                Padding(
                    padding: EdgeInsets.only(left: 20.h, right: 5.h),
                    child: _buildSixtyEight(context,
                        text: "Phonepe",
                        arrowRight: ImageConstant.imgArrowRightPrimary)),
                SizedBox(height: 20.v),
                Divider(endIndent: 5.h),
                SizedBox(height: 19.v),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                        padding: EdgeInsets.only(left: 28.h, right: 9.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgImage33,
                                  height: 32.v,
                                  width: 67.h),
                              Spacer(flex: 45),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 4.v, bottom: 5.v),
                                  child: Text("Google Pay UPI",
                                      style: theme.textTheme.titleMedium)),
                              Spacer(flex: 54),
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgArrowRightPrimary19x11,
                                  height: 19.v,
                                  width: 11.h,
                                  margin:
                                      EdgeInsets.only(top: 4.v, bottom: 7.v))
                            ]))),
                SizedBox(height: 18.v),
                Divider(endIndent: 5.h),
                SizedBox(height: 27.v),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                        padding: EdgeInsets.only(left: 28.h, right: 7.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgImage39,
                                  height: 25.v,
                                  width: 71.h,
                                  margin: EdgeInsets.only(top: 2.v)),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 28.h, bottom: 5.v),
                                  child: Text("Add UPI ID",
                                      style: theme.textTheme.titleMedium)),
                              Spacer(),
                              Padding(
                                  padding: EdgeInsets.only(bottom: 5.v),
                                  child: Text("Add",
                                      style: CustomTextStyles.bodyLargePrimary))
                            ]))),
                SizedBox(height: 20.v)
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildEnterUPIIDStack(BuildContext context) {
    return SizedBox(
        height: 493.v,
        width: 358.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 14.h, vertical: 15.v),
                  decoration: AppDecoration.fillBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 3.v),
                        Padding(
                            padding: EdgeInsets.only(left: 7.h),
                            child: CustomTextFormField(
                                controller: enterUPIIDController,
                                hintText: "Enter your UPI ID",
                                textInputAction: TextInputAction.done,
                                borderDecoration: TextFormFieldStyleHelper
                                    .fillPrimaryContainer,
                                fillColor: theme.colorScheme.primaryContainer
                                    .withOpacity(1))),
                        SizedBox(height: 11.v),
                        Padding(
                            padding: EdgeInsets.only(left: 14.h),
                            child: Text(
                                "Your UPI ID will be encrypted and is 100% safe with us ",
                                style:
                                    CustomTextStyles.bodySmallErrorContainer)),
                        SizedBox(height: 20.v),
                        CustomElevatedButton(
                            height: 43.v,
                            text: "Save UPI ID",
                            margin: EdgeInsets.only(left: 7.h),
                            buttonStyle: CustomButtonStyles.fillPrimary,
                            buttonTextStyle:
                                CustomTextStyles.titleMediumPrimaryContainer)
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgPolygon1,
              height: 31.adaptSize,
              width: 31.adaptSize,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(left: 38.h, bottom: 152.v)),
          _buildSeventyFour(context)
        ]));
  }

  /// Section Widget
  Widget _buildCardsStack(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Container(
            height: 120.v,
            width: 358.h,
            padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 4.v),
            decoration: AppDecoration.fillPrimaryContainer
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Stack(alignment: Alignment.topCenter, children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                      padding: EdgeInsets.only(top: 11.v, right: 5.h),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage37,
                                height: 36.v,
                                width: 62.h,
                                margin: EdgeInsets.only(left: 26.h)),
                            SizedBox(height: 10.v),
                            Divider()
                          ]))),
              Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                      width: 69.h,
                      margin: EdgeInsets.only(top: 8.v),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Personal\n",
                                style: CustomTextStyles.titleMediumff000000_1),
                            TextSpan(
                                text: "********456",
                                style: CustomTextStyles.labelLargeff847e7e)
                          ]),
                          textAlign: TextAlign.left))),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                      padding: EdgeInsets.only(right: 2.h, bottom: 13.v),
                      child: Text("Add credit or debit card",
                          style: theme.textTheme.titleMedium))),
              CustomImageView(
                  imagePath: ImageConstant.imgImage38,
                  height: 48.v,
                  width: 66.h,
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(left: 29.h))
            ])));
  }

  /// Section Widget
  Widget _buildOthersRow(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 13.v),
        decoration: AppDecoration.fillPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgImage28,
                  height: 36.v,
                  width: 102.h,
                  margin: EdgeInsets.only(left: 3.h, top: 4.v)),
              Padding(
                  padding: EdgeInsets.only(left: 26.h, top: 11.v, bottom: 6.v),
                  child: Text("Razorpay", style: theme.textTheme.titleMedium)),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRightPrimary19x11,
                  height: 19.v,
                  width: 11.h,
                  margin: EdgeInsets.only(top: 12.v, bottom: 7.v))
            ]));
  }

  /// Common widget
  Widget _buildSixtyEight(
    BuildContext context, {
    required String text,
    required String arrowRight,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage29, height: 30.v, width: 91.h),
          Padding(
              padding: EdgeInsets.only(left: 24.h, top: 5.v, bottom: 2.v),
              child: Text(text,
                  style: theme.textTheme.titleMedium!.copyWith(
                      color: theme.colorScheme.errorContainer.withOpacity(1)))),
          Spacer(),
          CustomImageView(
              imagePath: arrowRight,
              height: 19.v,
              width: 20.h,
              margin: EdgeInsets.only(top: 10.v))
        ]);
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
