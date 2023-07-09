import 'package:nasi_paipon/presentation/views/cart/cart_view.dart';
import 'package:nasi_paipon/presentation/views/checkout_view/checkout_view.dart';
import 'package:nasi_paipon/presentation/views/edit_profile/edit_profile_view.dart';
import 'package:nasi_paipon/presentation/views/forget_password/forget_password_view.dart';
import 'package:nasi_paipon/presentation/views/help_center/help_center_view.dart';
import 'package:nasi_paipon/presentation/views/kitchen_section/kitchen_section_view.dart';
import 'package:nasi_paipon/presentation/views/kitchen_section/management/add_new_menu_user.dart';
import 'package:nasi_paipon/presentation/views/kitchen_section/management/edit_kitchen_profile.dart';
import 'package:nasi_paipon/presentation/views/kitchen_section/management/agent_menu_view.dart';
import 'package:nasi_paipon/presentation/views/kitchen_section/management/user_menu_view.dart';
import 'package:nasi_paipon/presentation/views/kitchen_section/management/management_passwords_view.dart';
import 'package:nasi_paipon/presentation/views/kitchen_section/qr_scanner.dart';
import 'package:nasi_paipon/presentation/views/kitchen_section/todays_order.dart';
import 'package:nasi_paipon/presentation/views/log_in/log_in_view.dart';
import 'package:nasi_paipon/presentation/views/menu_detail/menu_detail_view.dart';
import 'package:nasi_paipon/presentation/views/messenger/messenger_view.dart';
import 'package:nasi_paipon/presentation/views/order_details/order_details_view.dart';
import 'package:nasi_paipon/presentation/views/password_recovery/passwords_recovery_view.dart';
import 'package:nasi_paipon/presentation/views/pick_up_location/pick_up_location_view.dart';
import 'package:nasi_paipon/presentation/views/place_order_view/place_order_view.dart';
import 'package:nasi_paipon/presentation/views/privacy_policy/privacy_policy.dart';
import 'package:nasi_paipon/presentation/views/qr_code/qr_code_view.dart';
import 'package:nasi_paipon/presentation/views/select_food_category/select_food_category_view.dart';
import 'package:nasi_paipon/presentation/views/select_user_type/select_user_view.dart';
import 'package:nasi_paipon/presentation/views/kitchen_section/sign_up_kitchen/sign_up_kitchen.dart';

import '../../app/index.dart';
import '../views/bottomNavBar/bottom_nav_bar.dart';
import '../views/kitchen_section/app_progress_view.dart';
import '../views/kitchen_section/management/add_agent_menu.dart';
import '../views/kitchen_section/management/agent_review.dart';
import '../views/kitchen_section/management/agent_review_detail.dart';
import '../views/kitchen_section/management/bulk_message.dart';
import '../views/kitchen_section/management/edit_agent_menu.dart';
import '../views/kitchen_section/management/edit_user_menu.dart';
import '../views/kitchen_section/management/management_view.dart';
import '../views/kitchen_section/management/messenger_section.dart';
import '../views/kitchen_section/management/operation_holidays_view.dart';
import '../views/kitchen_section/management/user_review.dart';
import '../views/kitchen_section/management/user_review_details.dart';
import '../views/messenger/chats_view.dart';
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
  static const String todaysOrderRoute = '/todaysOrderRoute';
  static const String chatViewRoute = '/chatScreen';
  static const String progressViewRoute = '/progressView';
  static const String managementViewRoute = '/managementView';
  static const String editKitchenProfile = '/editKitchenProfile';

  static const String managementPassRoute = '/managementPass';
  static const String userMenuRoute = '/userMenu';
  static const String kitchenMenu = '/editMenuAgent';
  static const String addNewMenuUserRoute = '/addNewMenuUser';
  static const String editUserMenuRoute = '/editUserMenu';
  static const String addNewAgentMenuRoute = '/addNewAgentMenu';
  static const String editAgentMenuRoute = '/editAgentMenu';
  static const String operationHourRoute = '/operationHour';
  static const String messengerRoute = '/messenger';
  static const String messengerSectionRoute = '/messengerSection';
  static const String bulkMessageRoute = '/bulkMessage';
  static const String userReviewRoute = '/userReview';
  static const String agentReviewRoute = '/agentReview';
  static const String userReviewDetailsRoute = '/userReviewDetailsRoute';
  static const String agentReviewDetailsRoute = '/agentReviewDetailsRoute';
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
      case Routes.todaysOrderRoute:
        return MaterialPageRoute(builder: (_) => TodaysOrderView());
      case Routes.chatViewRoute:
        return MaterialPageRoute(builder: (_) => const ChatView());
      case Routes.progressViewRoute:
        return MaterialPageRoute(builder: (_) => const ProgressView());
      case Routes.managementViewRoute:
        return MaterialPageRoute(builder: (_) => const ManagementView());
      case Routes.editUserMenuRoute:
        return MaterialPageRoute(builder: (_) => const EditUserMenu());
      case Routes.managementPassRoute:
        return MaterialPageRoute(builder: (_) => const ManagementPassView());
      case Routes.kitchenMenu:
        return MaterialPageRoute(builder: (_) => const AgentMenuView());
      case Routes.userMenuRoute:
        return MaterialPageRoute(builder: (_) => const UserMenuView());
      case Routes.addNewMenuUserRoute:
        return MaterialPageRoute(builder: (_) => const AddNewMenuUser());
      case Routes.editKitchenProfile:
        return MaterialPageRoute(builder: (_) => const EditKitchenProfile());
      case Routes.addNewAgentMenuRoute:
        return MaterialPageRoute(builder: (_) => const AddNewAgentMenu());
      case Routes.editAgentMenuRoute:
        return MaterialPageRoute(builder: (_) => const EditAgentMenu());
      case Routes.operationHourRoute:
        return MaterialPageRoute(
            builder: (_) => const OperationAndHolidaysView());
      case Routes.messengerRoute:
        return MaterialPageRoute(builder: (_) => const MessengerView());
      case Routes.messengerSectionRoute:
        return MaterialPageRoute(builder: (_) => const MessengerSection());
      case Routes.bulkMessageRoute:
        return MaterialPageRoute(builder: (_) => const BulkMessageView());
      case Routes.userReviewRoute:
        return MaterialPageRoute(builder: (_) => const UserReviewView());
      case Routes.agentReviewRoute:
        return MaterialPageRoute(builder: (_) => const AgentReviewView());
      case Routes.userReviewDetailsRoute:
        return MaterialPageRoute(builder: (_) => const UserReviewDetails());
      case Routes.agentReviewDetailsRoute:
        return MaterialPageRoute(builder: (_) => const AgentReviewDetails());
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
