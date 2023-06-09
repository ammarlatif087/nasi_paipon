

import '../../app/index.dart';

class Utils {
  static fieldFocusChange(
    BuildContext context,
    FocusNode currentNode,
    FocusNode nextNode,
  ) {
    currentNode.unfocus();
    FocusScope.of(context).requestFocus(nextNode);
  }

  static showToast({ error,msg}){
    Fluttertoast.showToast(
        msg: msg?? "Null",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: error==true ?Colors.red: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }


  static snackBar(BuildContext context, String message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: ColorManager.black,
        content: Utils.popinSemBoldText(
          message,
          color: ColorManager.white,
        ),
      ),
    );
  }

  static Text popinLightText(
    String text, {
    TextAlign? textAlign,
    Color? color,
    double? fontSize,
    double? letterSpacing,
    double? wordSpacing,
    TextOverflow? textOverflow,
  }) {
    return Text(
      text,
      overflow: textOverflow,
      style: TextStyleManager.popinsReg(
        color: color,
        fontSize: fontSize,
        wordSpacing: letterSpacing,
        letterSpacing: letterSpacing,
      ),
      textAlign: textAlign,
    );
  }

  static Text popinRegText(
    String text, {
    TextAlign? textAlign,
    Color? color,
    double? fontSize,
    double? letterSpacing,
    double? wordSpacing,
    TextOverflow? textOverflow,
    int? maxLines,
  }) {
    return Text(
      text,
      overflow: textOverflow,
      maxLines: maxLines,
      style: TextStyleManager.popinsReg(
        color: color,
        fontSize: fontSize,
        wordSpacing: letterSpacing,
        letterSpacing: letterSpacing,
      ),
      textAlign: textAlign,
    );
  }

  static Text popinMedText(
    String text, {
    TextAlign? textAlign,
    Color? color,
    double? fontSize,
    double? wordSpacing,
    TextOverflow? textOverflow,

    // double? height,
    double? letterSpacing,
  }) {
    return Text(
      text,
      overflow: textOverflow,
      style: TextStyleManager.popinsMed(
        color: color,
        fontSize: fontSize,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,

        // height: height,
      ),
      textAlign: textAlign,
    );
  }

  static Text popinSemBoldText(
    String text, {
    TextAlign? textAlign,
    Color? color,
    double? fontSize,
    double? wordSpacing,
    TextOverflow? textOverflow,
    int? maxLine,

    // double? height,
    double? letterSpacing,
  }) {
    return Text(
      text,
      overflow: textOverflow,
      maxLines: maxLine,
      style: TextStyleManager.popinsSemBold(
        color: color,
        fontSize: fontSize,
        letterSpacing: letterSpacing,

        // height: height,
      ),
      textAlign: textAlign,
    );
  }

  static Text popinBoldText(String text,
      {TextAlign? textAlign,
      Color? color,
      double? fontSize,
      TextOverflow? textOverflow,
      int? maxLines}) {
    return Text(
      text,
      overflow: textOverflow,
      style: TextStyleManager.popinsBold(
        color: color,
        fontSize: fontSize,
      ),
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }
}
