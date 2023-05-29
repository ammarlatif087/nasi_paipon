import '../../app/index.dart';

class AppButton extends StatelessWidget {
  // final String text;
  final Color? fgColor, bgColor;
  final bool border;
  final VoidCallback? onPress;
  final Widget? child;
  final double? radius;
  const AppButton({
    this.fgColor,
    this.bgColor,
    required this.child,
    //required this.text,
    this.border = false,
    required this.onPress,
    this.radius,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(50),
        elevation: 8,
        backgroundColor: bgColor ?? ColorManager.primaryLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius!),
          side: BorderSide(
            color: border ? ColorManager.black : ColorManager.transparent,
          ),
        ),
      ),
      onPressed: onPress,
      child: child,
    );
  }
}
