import 'package:nasi_paipon/presentation/view_models/bottom_nav_view_model.dart';
import 'package:nasi_paipon/presentation/view_models/checkout_view_model.dart';
import 'package:nasi_paipon/presentation/view_models/edit_menu_view_model.dart';
import 'package:nasi_paipon/presentation/view_models/food_category_view_model.dart';
import 'package:nasi_paipon/presentation/view_models/help_center_view_model.dart';
import 'package:nasi_paipon/presentation/view_models/menu_setting_view_model.dart';
import 'package:nasi_paipon/presentation/view_models/order_view_model.dart';
import 'package:nasi_paipon/presentation/view_models/qr_view_model.dart';
import 'package:nasi_paipon/presentation/view_models/select_location_view_model.dart';

import '../presentation/view_models/auth_view_model.dart';
import '../presentation/view_models/bulk_message_view_model.dart';
import '../presentation/view_models/set_holidays_view_model.dart';
import '../presentation/views/messenger/chats_view.dart';
import 'index.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(394.0, 852.0),
      minTextAdapt: true,
      builder: (context, child) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (ctx) => AuthViewModel()),
          ChangeNotifierProvider(create: (ctx) => BottomNavViewModel()),
          ChangeNotifierProvider(create: (ctx) => SelectLocationViewModel()),
          ChangeNotifierProvider(create: (ctx) => CheckoutViewModel()),
          ChangeNotifierProvider(create: (ctx) => QRGeneratorViewModel()),
          ChangeNotifierProvider(create: (ctx) => HelpCenterViewModel()),
          ChangeNotifierProvider(
              create: (ctx) => SelectFoodCategoryViewModel()),
          ChangeNotifierProvider(create: (ctx) => OrdersViewModel()),
          ChangeNotifierProvider(create: (ctx) => ChatViewModel()),
          ChangeNotifierProvider(create: (ctx) => MenuSettingViewModel()),
          ChangeNotifierProvider(create: (ctx) => EditMenuViewModel()),
          ChangeNotifierProvider(create: (ctx) => SetHolidaysViewModel()),
          ChangeNotifierProvider(create: (ctx) => BulkMessageViewModel()),
        ],
        child: const GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Nasi Paipon',
          // theme: getAppTheme(context),
          // home: const MyHomePage(title: 'Flutter Demo Home Page'),
          initialRoute: Routes.splashRoute,
          onGenerateRoute: RoutesGenerator.getRoute,
        ),
      ),
    );
  }
}
