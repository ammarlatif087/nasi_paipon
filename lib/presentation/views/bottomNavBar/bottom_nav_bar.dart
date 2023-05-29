import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../app/index.dart';
import '../../view_models/bottom_nav_view_model.dart';

class BottomNavigationView extends StatelessWidget {
  const BottomNavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<BottomNavViewModel>(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        // extendBody: true,

        body: viewModel.bodyWidget[viewModel.currentIndex],
        bottomNavigationBar: _buildBottomNavigationBar(viewModel, context),
      ),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar(
      BottomNavViewModel viewModel, BuildContext context) {
    return BottomNavigationBar(
      currentIndex: viewModel.currentIndex,
      onTap: (value) => viewModel.onTap(value),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      unselectedFontSize: 0,
      selectedItemColor: ColorManager.primary,
      selectedLabelStyle: TextStyleManager.popinsReg(
        color: ColorManager.primary,
        fontSize: 12.sp,
      ),
      items: [
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(
              top: 10.h,
              bottom: viewModel.currentIndex == 0 ? 8.h : 0,
            ),
            child: Icon(
              Icons.home_filled,
              color: viewModel.currentIndex == 0
                  ? ColorManager.primary
                  : ColorManager.darkGrey,
            ),
          ),
          label: viewModel.currentIndex == 0 ? 'Home' : '',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(
              top: 10.h,
              bottom: viewModel.currentIndex == 1 ? 8.h : 0,
            ),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: viewModel.currentIndex == 1
                  ? ColorManager.primary
                  : ColorManager.darkGrey,
            ),
          ),
          label: viewModel.currentIndex == 1 ? 'Cart' : '',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(
              top: 10.h,
              bottom: viewModel.currentIndex == 2 ? 8.h : 0,
            ),
            child: Icon(
              FontAwesomeIcons.facebookMessenger,
              color: viewModel.currentIndex == 2
                  ? ColorManager.primary
                  : ColorManager.darkGrey,
            ),
          ),
          label: viewModel.currentIndex == 2 ? 'chat' : '',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(
              top: 10.h,
              bottom: viewModel.currentIndex == 3 ? 8.h : 0,
            ),
            child: Icon(
              Icons.shopping_bag_outlined,
              color: viewModel.currentIndex == 3
                  ? ColorManager.primary
                  : ColorManager.darkGrey,
            ),
          ),
          label: viewModel.currentIndex == 3 ? 'Orders' : '',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(
              top: 10.h,
              bottom: viewModel.currentIndex == 4 ? 8.h : 0,
            ),
            child: Icon(
              Icons.person,
              color: viewModel.currentIndex == 4
                  ? ColorManager.primary
                  : ColorManager.darkGrey,
            ),
          ),
          label: viewModel.currentIndex == 4 ? 'Profile' : '',
        ),
      ],
    );
  }
}
