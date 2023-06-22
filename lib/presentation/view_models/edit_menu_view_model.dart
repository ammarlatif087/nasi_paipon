import 'package:nasi_paipon/app/index.dart';

enum Option { publish, unpublish }

enum PriceOption { show, strike }

enum PromoOption { show, hide }

enum FoodType { halal, haram }

class EditMenuViewModel extends ChangeNotifier {
//radio for publish or unpublish
  Option _selectedOption = Option.publish;
  Option get selectedOption => _selectedOption;
  void setSelectedOption(Option option) {
    _selectedOption = option;
    notifyListeners();
  }

  // radio for food type
  FoodType _selectedFoodType = FoodType.halal;
  FoodType get selectedFood => _selectedFoodType;
  void setSelectedFood(FoodType option) {
    _selectedFoodType = option;
    notifyListeners();
  }

  // radio for price hide show
  PriceOption _selectedPriceOpt = PriceOption.show;

  PriceOption get selectedPriceOpt => _selectedPriceOpt;

  void setPriceOption(PriceOption option) {
    _selectedPriceOpt = option;

    notifyListeners();
  }

  //radio for promo rm
  PromoOption _promoOption = PromoOption.show;
  PromoOption get promoOption => _promoOption;
  void selectedPromoOption(PromoOption option) {
    _promoOption = option;

    notifyListeners();
  }

  void handleEdit() {
    Get.toNamed(Routes.editUserMenuRoute);
  }

  void handleDelete() {
    showDialog(
      context: Get.overlayContext!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Utils.popinSemBoldText(
            'Are you sure you want to delete?',
            fontSize: 16.sp,
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: Utils.popinMedText('Yes'),
            ),
            TextButton(
              onPressed: () {},
              child: Utils.popinMedText(
                'No',
                color: ColorManager.red,
              ),
            ),
          ],
        );
      },
    );
    print('Delete');
  }
}
