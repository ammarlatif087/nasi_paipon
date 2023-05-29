import '../../../app/index.dart';
import '../../common/app_button.dart';
import '../../view_models/food_category_view_model.dart';

class SelectFoodCategoryView extends StatelessWidget {
  const SelectFoodCategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<SelectFoodCategoryViewModel>(context);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 20.0.h),
          child: Column(
            children: [
              Utils.popinSemBoldText(
                'Choose Categories',
                fontSize: 18.sp,
              ),
              SizedBox(height: 20.0.h),
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: viewModel.foodCategories.length,
                  itemBuilder: (BuildContext context, int index) {
                    final category = viewModel.foodCategories[index];
                    return ListTile(
                      leading: Utils.popinRegText(category, fontSize: 16.sp),
                      trailing: Checkbox(
                        activeColor: ColorManager.primary,
                        value: viewModel.selectedCategories.contains(category),
                        onChanged: (value) {
                          viewModel.toggleCategory(category);
                        },
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(height: 10.0.h);
                  },
                ),
              ),
              const SizedBox(height: 20.0),
              AppButton(
                bgColor: ColorManager.primary,
                radius: 10.0,
                child: const Text(
                  'Apply',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                onPress: () {
                  final selectedCategories = viewModel.selectedCategories;
                  print(selectedCategories);

                  Get.offAndToNamed(Routes.bottomNavRoute);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
