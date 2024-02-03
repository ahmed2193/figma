import 'package:figma/core/app_export.dart';
import 'package:figma/views/order_summary_screen/widgets/chipview_item_widget.dart';
import 'package:figma/widgets/app_bar/appbar_leading_image.dart';
import 'package:figma/widgets/app_bar/appbar_subtitle.dart';
import 'package:figma/widgets/app_bar/custom_app_bar.dart';
import 'package:figma/widgets/custom_elevated_button.dart';
import 'package:figma/widgets/custom_outlined_button.dart';
import 'package:figma/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../routers/route.dart';

// ignore_for_file: must_be_immutable
class OrderSummaryScreen extends StatelessWidget {
  OrderSummaryScreen({Key? key}) : super(key: key);

  TextEditingController totalSavingsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 15.v),
            child: Column(children: [
              SizedBox(height: 10.v),
              Expanded(
                  child: SingleChildScrollView(
                      child: Container(
                          margin: EdgeInsets.only(bottom: 5.v),
                          padding: EdgeInsets.symmetric(horizontal: 15.h),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Nursery 1",
                                    style: theme.textTheme.headlineSmall),
                                Text("Sector 18, Chandigrah",
                                    style: CustomTextStyles.titleMediumMedium),
                                SizedBox(height: 17.v),
                                _buildChipView(context),
                                SizedBox(height: 14.v),
                                Opacity(
                                    opacity: 0.20065889,
                                    child: Divider(
                                        color: appTheme.gray500
                                            .withOpacity(0.42))),
                                SizedBox(height: 9.v),
                                Text("This order was delivered",
                                    style:
                                        CustomTextStyles.titleMediumSemiBold16),
                                SizedBox(height: 24.v),
                                _buildOrderRow(context),
                                SizedBox(height: 18.v),
                                Opacity(
                                    opacity: 0.20065889,
                                    child: Divider(
                                        color: appTheme.gray500
                                            .withOpacity(0.42))),
                                SizedBox(height: 15.v),
                                _buildSubtotalRow(context,
                                    subtotalText: "Item Total",
                                    settingsImage: ImageConstant
                                        .imgSettingsOnerrorcontainer,
                                    copyText: "450"),
                                SizedBox(height: 15.v),
                                Text("Palm Plant",
                                    style:
                                        CustomTextStyles.titleSmallMontserrat),
                                SizedBox(height: 6.v),
                                _buildQuantityRow(context),
                                SizedBox(height: 16.v),
                                Opacity(
                                    opacity: 0.20065889,
                                    child: Divider(
                                        color: appTheme.gray500
                                            .withOpacity(0.42))),
                                SizedBox(height: 18.v),
                                _buildPriceRow(context),
                                SizedBox(height: 12.v),
                                _buildSubtotalRow(context,
                                    subtotalText: "Subtotal",
                                    settingsImage:
                                        ImageConstant.imgSettingsBlueGray400,
                                    copyText: "16.00"),
                                SizedBox(height: 15.v),
                                _buildSubtotalRow(context,
                                    subtotalText: "Delivery fee",
                                    settingsImage:
                                        ImageConstant.imgSettingsBlueGray400,
                                    copyText: "1.00"),
                                SizedBox(height: 13.v),
                                _buildSubtotalRow(context,
                                    subtotalText: "Discounts",
                                    settingsImage:
                                        ImageConstant.imgSettingsBlueGray400,
                                    copyText: "3.00"),
                                SizedBox(height: 19.v),
                                Divider(color: appTheme.gray500),
                                SizedBox(height: 16.v),
                                _buildSubtotalRow(context,
                                    subtotalText: "Total",
                                    settingsImage: ImageConstant
                                        .imgSettingsErrorcontainer12x9,
                                    copyText: "14.00"),
                                SizedBox(height: 17.v),
                                CustomTextFormField(
                                    controller: totalSavingsController,
                                    hintText: "Your Total Savings",
                                    hintStyle:
                                        CustomTextStyles.titleMediumBlue700,
                                    textInputAction: TextInputAction.done,
                                    suffix: TextButton(
                                      onPressed: () {
                                        // Handle button press
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgSettingsOnerrorcontainer,
                                              color: Color(0XFF397ECC),
                                              height: 10.v,
                                              width: 6.h,
                                              margin: EdgeInsets.only(
                                                  top: 7.v, bottom: 3.v)),
                                          SizedBox(
                                              width: 2.0
                                                  .v), // Adjust spacing between icon and text
                                          Text("120.00",
                                              style: TextStyle(
                                                  color: Color(0XFF397ECC),
                                                  fontSize: 14.fSize,
                                                  fontFamily: 'Lato',
                                                  fontWeight: FontWeight.w600)),
                                        ],
                                      ),
                                    ),
                                    suffixConstraints:
                                        BoxConstraints(maxHeight: 44.v),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 11.h, vertical: 13.v))
                              ]))))
            ])),
        bottomNavigationBar: _buildRepeatOrder(context));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 36.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftPrimary,
            margin: EdgeInsets.only(left: 16.h, top: 16.v, bottom: 19.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "Order Summary"));
  }

  /// Section Widget
  Widget _buildChipView(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List<Widget>.generate(
            2,
            (index) => ChipviewItemWidget(
                  onPressed: () {
                    context.push(Routes.cart);
                  },
                )));
  }

  /// Section Widget
  Widget _buildOrderRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 3.v, bottom: 4.v),
          child:
              Text("Your Order", style: CustomTextStyles.titleSmallMontserrat)),
      CustomOutlinedButton(
          width: 150.h,
          onPressed: () {
            context.push(Routes.cart);
          },
          text: "Mark As Favorite")
    ]);
  }

  /// Section Widget
  Widget _buildQuantityRow(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
      Text("Quantity:", style: CustomTextStyles.titleSmallBluegray400_1),
      Padding(
          padding: EdgeInsets.only(left: 3.h, bottom: 2.v),
          child:
              Text("1 X Palm", style: CustomTextStyles.titleSmallMontserrat)),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgSettingsOnerrorcontainer,
          height: 10.v,
          width: 6.h,
          margin: EdgeInsets.only(top: 7.v, bottom: 3.v)),
      Padding(
          padding: EdgeInsets.only(left: 1.h, top: 3.v),
          child:
              Text("450", style: CustomTextStyles.titleSmallOnErrorContainer))
    ]);
  }

  /// Section Widget
  Widget _buildPriceRow(BuildContext context) {
    return Row(children: [
      Text("Coupon - (TASTYTRAILS)",
          style: CustomTextStyles.titleMediumBlue700),
      Spacer(),
      Text("You saved ", style: CustomTextStyles.titleMediumBlue700),
      CustomImageView(
          imagePath: ImageConstant.imgSettingsBlue700,
          height: 10.v,
          width: 6.h,
          margin: EdgeInsets.only(left: 3.h, top: 5.v, bottom: 5.v)),
      Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text("120.00", style: CustomTextStyles.titleSmallBlue700))
    ]);
  }

  /// Section Widget
  Widget _buildRepeatOrder(BuildContext context) {
    return CustomElevatedButton(
        onPressed: () {
          context.push(Routes.cart);
        },
        height: 69.v,
        text: "Repeat Order",
        subText: "View Cart On Next Step",
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 30.v),
        buttonStyle: CustomButtonStyles.fillPrimary,
        buttonTextStyle: CustomTextStyles.titleMediumGray50);
  }

  /// Common widget
  Widget _buildSubtotalRow(
    BuildContext context, {
    required String subtotalText,
    required String settingsImage,
    required String copyText,
  }) {
    return Row(children: [
      Text(subtotalText,
          style: CustomTextStyles.titleSmallBluegray400_1
              .copyWith(color: appTheme.blueGray400)),
      Spacer(),
      CustomImageView(
          imagePath: settingsImage,
          height: 10.v,
          width: 6.h,
          margin: EdgeInsets.symmetric(vertical: 3.v)),
      Text(copyText,
          style: CustomTextStyles.titleSmallBluegray400
              .copyWith(color: appTheme.blueGray400))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
