import 'package:blog_app/core/utils/constants.dart';
class SizeCalculator {
  static double width(double width) {
    if(width > kAppWidthMax){
      return kAppWidthMax;
    }
    if(width < kAppWidthMin){
      return kAppWidthMin;
    }
    return width;
  }
}
