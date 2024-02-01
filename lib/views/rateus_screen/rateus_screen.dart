import 'package:figma/core/app_export.dart';
import 'package:figma/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../routers/route.dart';

class RateUsScreen extends StatelessWidget {
  const RateUsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            SizedBox(height: 114.v),
            Expanded(
              child: SingleChildScrollView(
                child: _buildOrganicFlatHoSection(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOrganicFlatHoSection(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(Routes.rateUsAndReviewScreen);
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 303.v),
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgOrganicFlatHo,
              height: 199.v,
              width: 219.h,
            ),
            SizedBox(height: 21.v),
            Text(
              "Nursery 1",
              style: theme.textTheme.titleLarge,
            ),
            SizedBox(height: 6.v),
            Divider(
              color: theme.colorScheme.primary,
              indent: 21.h,
              endIndent: 21.h,
              thickness: 4,
            ),
            SizedBox(height: 11.v),
            Text(
              "How was your experience ?",
              style: theme.textTheme.titleLarge,
            ),
            SizedBox(height: 5.v),
            CustomRatingBar(
              initialRating: 5,
            ),
          ],
        ),
      ),
    );
  }
}
