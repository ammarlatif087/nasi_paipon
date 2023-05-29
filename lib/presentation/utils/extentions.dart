import '../../app/index.dart';

extension Toggle on bool {
  bool toggle() => !this;
}

extension SpaceXY on num {
  SizedBox get spaceX => SizedBox(width: toDouble().w);
  SizedBox get spaceY => SizedBox(height: toDouble().h);
}

// extension Sizer on num {
//   double get sw => getProportionateScreenWidth(toDouble());
//   double get sh => getProportionateScreenHeight(toDouble());
//   double get px => getProportionateScreenHeight(toDouble());
//   double get sizeR => getProportionateScreenHeight(toDouble());
// }
