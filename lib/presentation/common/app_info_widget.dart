import 'package:just_the_tooltip/just_the_tooltip.dart';

import '../../app/index.dart';

class AppInfoWidget extends StatelessWidget {
  final Widget? child;
  final String? message;
  final Color? color;

  const AppInfoWidget({super.key, this.child, this.message, this.color});

  @override
  Widget build(BuildContext context) {
    return JustTheTooltip(
      triggerMode: TooltipTriggerMode.tap,
      content: Padding(
        padding: const EdgeInsets.all(8.0),
        child: child ??
            Utils.popinRegText(
              message!,
            ),
      ),
      showDuration: const Duration(seconds: 8),
      child: Icon(
        Icons.info,
        color: color,
      ),
    );
  }
}
