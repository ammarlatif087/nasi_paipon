import '../../app/index.dart';

class PassRecWidget extends StatelessWidget {
  final bool border;
  final VoidCallback? onPress;
  final Color? color;
  final String title;
  final String contactType;
  final IconData icon;
  const PassRecWidget({
    super.key,
    this.border = false,
    this.onPress,
    this.color,
    required this.title,
    required this.contactType,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          color: ColorManager.white,
          boxShadow: [
            BoxShadow(
              color: ColorManager.black.withOpacity(.2),
              blurRadius: 10.r,
              spreadRadius: 2.r,
            ),
          ],
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            color: border ? ColorManager.primary : ColorManager.transparent,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30.r,
                backgroundColor: ColorManager.grey,
                child: CircleAvatar(
                  backgroundColor: color,
                  radius: 26.r,
                  child: Icon(
                    icon,
                    size: 26.sp,
                    color: ColorManager.white,
                  ),
                ),
              ),
              30.spaceX,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Utils.popinMedText(title),
                  6.spaceY,
                  Utils.popinRegText(contactType, color: ColorManager.darkGrey)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
