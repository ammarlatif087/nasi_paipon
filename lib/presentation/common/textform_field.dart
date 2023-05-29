import '../../app/index.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    this.controller,
    this.keyboardType,
    required this.hintText,
    this.validator,
    this.onSave,
    this.onChange,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText,
  }) : super(key: key);
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final String? Function(String? value)? validator;
  final void Function(String? newValue)? onSave;
  final void Function(String newValue)? onChange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      keyboardType: keyboardType,
      controller: controller,
      style: TextStyleManager.popinsReg(
        fontSize: 16.sp,
      ),
      decoration: InputDecoration(
        filled: true,

        fillColor: ColorManager.grey,
        isDense: true,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,

        contentPadding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.w),
        enabledBorder: OutlineInputBorderRectangleStyle.getEnabledBorder(),
        focusedBorder: OutlineInputBorderRectangleStyle.getFocusBorder(),
        border: OutlineInputBorderRectangleStyle.getEnabledBorder(),
        errorBorder: OutlineInputBorderRectangleStyle.getErrorBorder(),
        focusedErrorBorder:
            OutlineInputBorderRectangleStyle.getFocusedErrorBorder(),

        hintText: hintText,
        hintStyle: TextStyleManager.popinsReg(
          color: ColorManager.darkGrey,
          fontSize: 16.sp,
        ),
        // enabledBorder:
      ),
      onChanged: onChange,
      validator: validator,
      onSaved: onSave,
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}
