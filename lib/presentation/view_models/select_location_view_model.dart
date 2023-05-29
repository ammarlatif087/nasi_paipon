import '../../app/index.dart';

class SelectLocationViewModel extends ChangeNotifier {
  List<String> _region = [
    'Region 1',
    'Region 2',
    'Region 3',
  ];
  String _selectedRegion = '';

  List<String> get regions => _region;

  String get selectedRegion => _selectedRegion;

  set selectedRegion(String value) {
    _selectedRegion = value;
    notifyListeners();
  }

  set regions(List<String> value) {
    _region = value;
    notifyListeners();
  }

  //////////////////////////////
  List<String> _subRegion = [
    'Sub region 1',
    'Sub region 2',
    'Sub region 3',
    'Sub region 4',
  ];
  String _selectedSubRegion = '';

  List<String> get subRegions => _subRegion;

  String get selectedSubRegion => _selectedSubRegion;

  set selectedSubRegion(String value) {
    _selectedSubRegion = value;
    notifyListeners();
  }

  set subRegions(List<String> value) {
    _subRegion = value;
    notifyListeners();
  }
}
