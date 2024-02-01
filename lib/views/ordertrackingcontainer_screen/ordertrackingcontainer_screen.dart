// import 'package:figma/core/app_export.dart';
// import 'package:figma/widgets/custom_bottom_bar.dart';
// import 'package:flutter/material.dart';

// // ignore_for_file: must_be_immutable
// class OrdertrackingcontainerScreen extends StatelessWidget {
//   OrdertrackingcontainerScreen({Key? key}) : super(key: key);

//   GlobalKey<NavigatorState> navigatorKey = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//             body: Navigator(
//                 key: navigatorKey,
//                 initialRoute: AppRoutes.ordertrackingPage,
//                 onGenerateRoute: (routeSetting) => PageRouteBuilder(
//                     pageBuilder: (ctx, ani, ani1) =>
//                         getCurrentPage(routeSetting.name!),
//                     transitionDuration: Duration(seconds: 0))),
//             bottomNavigationBar: Padding(
//                 padding: EdgeInsets.only(right: 5.h),
//                 child: _buildBottomBar(context))));
//   }

//   /// Section Widget
//   Widget _buildBottomBar(BuildContext context) {
//     return CustomBottomBar(onChanged: (BottomBarEnum type) {
//       Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
//     });
//   }

//   ///Handling route based on bottom click actions
//   String getCurrentRoute(BottomBarEnum type) {
//     switch (type) {
//       case BottomBarEnum.Frame:
//         return "/";
//       case BottomBarEnum.Frameerrorcontainer:
//         return "/";
//       case BottomBarEnum.Frameerrorcontainer24x24:
//         return "/";
//       case BottomBarEnum.Frame24x24:
//         return "/";
//       case BottomBarEnum.Frameprimary:
//         return AppRoutes.ordertrackingPage;
//       default:
//         return "/";
//     }
//   }

//   ///Handling page based on route
//   Widget getCurrentPage(String currentRoute) {
//     switch (currentRoute) {
//       case AppRoutes.ordertrackingPage:
//         return OrdertrackingPage();
//       default:
//         return DefaultWidget();
//     }
//   }
// }
