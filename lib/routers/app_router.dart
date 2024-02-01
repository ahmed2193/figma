import 'package:figma/controllers/bottom_nav/bottom_nav_bloc.dart';
import 'package:figma/routers/route.dart';
import 'package:figma/views/auths/login_view.dart';
import 'package:figma/views/auths/otp_view.dart';
import 'package:figma/views/auths/splash_view.dart';
import 'package:figma/views/core/bottom_nav_home_page.dart';
import 'package:figma/views/core/home_page.dart';
import 'package:figma/views/coupons/coupons_view.dart';
import 'package:figma/views/locations/location_view.dart';
import 'package:figma/views/nurseries/nursery_detail.dart';
import 'package:figma/views/nurseries/nursery_search.dart';
import 'package:figma/views/payments/payment_method.dart';
import 'package:figma/views/profiles/about_us_view.dart';
import 'package:figma/views/profiles/frequently_view.dart';
import 'package:figma/views/profiles/privacy_and_policy.dart';
import 'package:figma/views/profiles/profile.dart';
import 'package:figma/views/profiles/profile_data.dart';
import 'package:figma/views/rate_us_and_review_screen/rate_us_and_review_screen.dart';
import 'package:figma/views/rating_and_review_screen/ratingandreview_screen.dart';
import 'package:figma/views/reviews/reviews_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../views/deliveries/cart_view.dart';
import '../views/gifts/gifts_view.dart';
import '../views/order_summary_screen/ordersummary_screen.dart';
import '../views/ordertracking_page/ordertracking_page.dart';
import '../views/payment_method_screen/payment_method_screen.dart';
import '../views/rateus_screen/rateus_screen.dart';
import '../views/star_rating_screen/starrating_screen.dart';

class AppRouter {
  static GoRouter router = GoRouter(routes: [
    GoRoute(
        path: Routes.splash,
        builder: (context, state) =>

            // OrdertrackingPage()
            SimpleSplashPage()
        //
        ),
    // GoRoute(
    //     path: Routes.login,
    //     builder: (context, state) => RatingAndReviewScreen()),
    GoRoute(path: Routes.login, builder: (context, state) => const LoginPage()),
    // TwentyeightTabContainerScreen
    GoRoute(
        path: Routes.otp,
        builder: (context, state) => const OTPVerificationPage()),
    GoRoute(
        path: Routes.navHome,
        builder: (context, state) => BlocProvider<BottomNavBloc>(
              create: (context) => BottomNavBloc()..add(const BottomNavInit()),
              child: BottomNavHomePage(),
            )),
    GoRoute(path: Routes.home, builder: (context, state) => const HomePage()),
    GoRoute(
        path: Routes.location, builder: (context, state) => const Location()),
    GoRoute(path: Routes.profile, builder: (context, state) => const Profile()),
    GoRoute(path: Routes.coupons, builder: (context, state) => const Coupons()),
    GoRoute(path: Routes.payment, builder: (context, state) => const Payment()),
    GoRoute(
        path: Routes.profileData,
        builder: (context, state) => const ProfileData()),
    GoRoute(path: Routes.faq, builder: (context, state) => const Frequently()),
    GoRoute(path: Routes.about, builder: (context, state) => const About()),
    GoRoute(
        path: Routes.privPolic, builder: (context, state) => const PrivPolic()),
    GoRoute(
        path: Routes.nurserySearch,
        builder: (context, state) => const NurserySearch()),
    GoRoute(
        path: Routes.detailNursery,
        builder: (context, state) => const NurseryDetail()),
    GoRoute(path: Routes.reviews, builder: (context, state) => const Reviews()),
    GoRoute(
        path: Routes.ratingAndReviewScreen,
        builder: (context, state) => RatingAndReviewScreen()),
    GoRoute(
        path: Routes.rateusScreen, builder: (context, state) => RateUsScreen()),
    GoRoute(
        path: Routes.rateUsAndReviewScreen,
        builder: (context, state) => RateUsAndReviewScreen()),
    GoRoute(path: Routes.gift, builder: (context, state) => Gift()),
    GoRoute(
        path: Routes.orderSummaryScreen,
        builder: (context, state) => OrderSummaryScreen()),
    GoRoute(
        path: Routes.paymentMethodScreen,
        builder: (context, state) => PaymentMethodScreen()),
    GoRoute(
        path: Routes.ordertrackingPage,
        builder: (context, state) => OrdertrackingPage()),
    GoRoute(path: Routes.cart, builder: (context, state) => Cart()),
    GoRoute(path: Routes.starRatingScreen, builder: (context, state) => StarRatingScreen()),
  ]);
}
