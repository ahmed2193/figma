import 'package:figma/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChipviewItemWidget extends StatelessWidget {
  const ChipviewItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: 
      RawChip(
  padding: EdgeInsets.only(
    top: 12.v,
    right: 12.h,
    bottom: 12.v,
    left: 12.v
  ),
  showCheckmark: false,
  labelPadding: EdgeInsets.zero,
  label: Text(
    "Download Invoice",
    textAlign: TextAlign.center,  // Add this line for center alignment
    style: TextStyle(
      color: theme.colorScheme.errorContainer.withOpacity(1),
      fontSize: 14.fSize,
      fontFamily: 'Lato',
      fontWeight: FontWeight.w500,
    ),
  ),
  avatar: CustomImageView(
    imagePath: ImageConstant.imgFramePrimary20x20,
    height: 25.adaptSize,
    width: 25.adaptSize,
    margin: EdgeInsets.only(right: 4.h),
  ),
  selected: false,
  backgroundColor: Colors.transparent,
  selectedColor: theme.colorScheme.errorContainer.withOpacity(0.2),
  shape: RoundedRectangleBorder(
    side: BorderSide(
      color: appTheme.gray200,
      width: 1.h,
    ),
    borderRadius: BorderRadius.circular(
      10.h,
    ),
  ),
  onSelected: (value) {},
),

   
   
    );
  }
}
