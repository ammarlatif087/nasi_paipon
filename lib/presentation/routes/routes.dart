import 'package:nasi_paipon/presentation/views/cart/cart_view.dart';
import 'package:nasi_paipon/presentation/views/checkout_view/checkout_view.dart';
import 'package:nasi_paipon/presentation/views/edit_profile/edit_profile_view.dart';
import 'package:nasi_paipon/presentation/views/forget_password/forget_password_view.dart';
import 'package:nasi_paipon/presentation/views/help_center/help_center_view.dart';
import 'package:nasi_paipon/presentation/views/kitchen_section/kitchen_section_view.dart';
import 'package:nasi_paipon/presentation/views/kitchen_section/qr_scanner.dart';
import 'package:nasi_paipon/presentation/views/log_in/log_in_view.dart';
import 'package:nasi_paipon/presentation/views/menu_detail/menu_detail_view.dart';
import 'package:nasi_paipon/presentation/views/order_details/order_details_view.dart';
import 'package:nasi_paipon/presentation/views/password_recovery/passwords_recovery_view.dart';
import 'package:nasi_paipon/presentation/views/pick_up_location/pick_up_location_view.dart';
import 'package:nasi_paipon/presentation/views/place_order_view/place_order_view.dart';
import 'package:nasi_paipon/presentation/views/privacy_policy/privacy_policy.dart';
import 'package:nasi_paipon/presentation/views/qr_code/qr_code_view.dart';
import 'package:nasi_paipon/presentation/views/select_food_category/select_food_category_view.dart';
import 'package:nasi_paipon/presentation/views/select_user_type/select_user_view.dart';
import 'package:nasi_paipon/presentation/views/sign_up_kitchen/sign_up_kitchen.dart';

import '../../app/index.dart';
import '../views/bottomNavBar/bottom_nav_bar.dart';
import '../views/order_details/completed_order_details.dart';
import '../views/sign_up/sign_up_view.dart';
import '../views/splash_view.dart';

class Routes {
  static const String mainRoute = '/mainRoute';
  static const String splashRoute = '/';
  static const String loginRoute = '/login';
  static const String signUpRoute = '/signUp';
  static const String kitchensignUpRoute = '/kitchenignUp';
  static const String forgetPassRoute = '/forgetPass';
  static const String userTypeRoute = '/userType';
  static const String pickUplocRoute = '/pickUploc';
  static const String homeRoute = '/home';
  static const String bottomNavRoute = '/bottomNav';
  static const String menuDetailRoute = '/menuDetail';
  static const String editProfileRoute = '/editProfile';
  static const String selectFoodCategoryRoute = '/selectFoodCategory';
  static const String checkoutRoute = '/checkout';
  static const String placeOrderRoute = '/placeOrder';
  static const String orderDetailRoute = '/orderDetail';
  static const String qrGenCodeRoute = '/qrCode';
  static const String privacyRoute = '/privacy';
  static const String helpCenterRoute = '/helpCenter';
  static const String kitchenSectionRoute = '/kitchenSection';
  static const String qrScannerRoute = '/qrScanner';
  static const String addToCartRoute = '/addToCart';
  static const String recoveryRoute = '/recoveryRoute';
  static const String completedOrderDetails = '/completedOrderDetails';
}

class RoutesGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.forgetPassRoute:
        return MaterialPageRoute(builder: (_) => const ForgetPasswordView());
      case Routes.signUpRoute:
        return MaterialPageRoute(builder: (_) => const SignUpView());
      case Routes.kitchensignUpRoute:
        return MaterialPageRoute(builder: (_) => const KitchenSignUpView());
      case Routes.userTypeRoute:
        return MaterialPageRoute(builder: (_) => const SelectUserType());
      case Routes.pickUplocRoute:
        return MaterialPageRoute(builder: (_) => const PickUpLocationView());
      case Routes.bottomNavRoute:
        return MaterialPageRoute(builder: (_) => const BottomNavigationView());

      case Routes.menuDetailRoute:
        return MaterialPageRoute(builder: (_) => const MenuDetailView());
      case Routes.editProfileRoute:
        return MaterialPageRoute(builder: (_) => const EditProfileView());
      case Routes.selectFoodCategoryRoute:
        return MaterialPageRoute(
            builder: (_) => const SelectFoodCategoryView());
      case Routes.checkoutRoute:
        return MaterialPageRoute(builder: (_) => const CheckoutView());
      case Routes.placeOrderRoute:
        return MaterialPageRoute(builder: (_) => const PlaceOrderView());
      case Routes.orderDetailRoute:
        return MaterialPageRoute(
            builder: (_) => const PendingOrderDetailsView());
      case Routes.qrGenCodeRoute:
        return MaterialPageRoute(builder: (_) => const QrCodeView());
      case Routes.privacyRoute:
        return MaterialPageRoute(builder: (_) => const PrivacyPolicyView());
      case Routes.helpCenterRoute:
        return MaterialPageRoute(builder: (_) => const HelpCenterView());
      case Routes.kitchenSectionRoute:
        return MaterialPageRoute(builder: (_) => const KitchenSectionView());
      case Routes.qrScannerRoute:
        return MaterialPageRoute(builder: (_) => const QrScannerView());
      case Routes.addToCartRoute:
        return MaterialPageRoute(builder: (_) => const CartView());
      case Routes.recoveryRoute:
        return MaterialPageRoute(builder: (_) => PasswordsRecoveryView());
      case Routes.completedOrderDetails:
        return MaterialPageRoute(
            builder: (_) => const CompletedOrderDetailsView());
    }
    return _unDefinedRoute();
  }

  static Route<dynamic> _unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(StringManager.undefinedRoute),
        ),
        body: const Center(
          child: Text(StringManager.noRouteFound),
        ),
      ),
    );
  }
}
