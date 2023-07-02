import 'package:nasi_paipon/app/index.dart';

enum Option { publish, unpublish }

enum PriceOption { show, strike }

enum PromoOption { show, hide }

enum FoodType { halal, haram }

class EditMenuViewModel extends ChangeNotifier {
  Option _selectedOption = Option.publish;
  Option get selectedOption => _selectedOption;

  void setSelectedOption(Option option) {
    _selectedOption = option;
    printSelectedValues();
    notifyListeners();
  }

  FoodType _selectedFoodType = FoodType.halal;
  FoodType get selectedFood => _selectedFoodType;

  void setSelectedFood(FoodType option) {
    _selectedFoodType = option;
    printSelectedValues();
    notifyListeners();
  }

  PriceOption _selectedPriceOpt = PriceOption.show;
  PriceOption get selectedPriceOpt => _selectedPriceOpt;

  void setPriceOption(PriceOption option) {
    if (option != PriceOption.strike) {
      _selectedPriceOpt = option;
      if (_selectedPriceOpt == PriceOption.show) {
        _promoOption = PromoOption.hide;
      }
      printSelectedValues();
      notifyListeners();
    }
  }

  PromoOption _promoOption = PromoOption.hide;
  PromoOption get promoOption => _promoOption;

  void selectedPromoOption(PromoOption option) {
    if (option != PromoOption.hide) {
      _promoOption = option;
      if (_promoOption == PromoOption.show) {
        _selectedPriceOpt = PriceOption.strike;
      }
      printSelectedValues();
      notifyListeners();
    }
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

  void printSelectedValues() {
    print('Selected Option: $_selectedOption');
    print('Selected Food Type: $_selectedFoodType');
    print('Selected Price Option: $_selectedPriceOpt');
    print('Selected Promo Option: $_promoOption');
  }
}
