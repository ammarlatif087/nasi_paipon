import '../../app/index.dart';

class PrivacyPolicyWidget extends StatelessWidget {
  final String heading;
  final String paragraph;
  const PrivacyPolicyWidget({
    super.key,
    required this.heading,
    required this.paragraph,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Utils.popinBoldText(
          heading,
          fontSize: 18.sp,
        ),
        10.spaceY,
        Utils.popinMedText(
          paragraph,
          textAlign: TextAlign.start,
          fontSize: 16.sp,
        ),
      ],
    );
  }
}
