import '../../app/index.dart';

class SocialLoginWidget extends StatelessWidget {
  final Widget child;
  final Color color;
  final VoidCallback onPress;

  const SocialLoginWidget({
    super.key,
    required this.color,
    required this.onPress,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
          height: 50.h,
          width: 80.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              color: ColorManager.darkGrey,
            ),
          ),
          child: child),
    );
  }
}
