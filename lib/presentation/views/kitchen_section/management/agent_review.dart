import 'package:nasi_paipon/app/index.dart';

class AgentReviewView extends StatelessWidget {
  const AgentReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> menuList = [
      'Biryani',
      'Fried Rice',
      'Chicken',
      'Roast',
    ];
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(18.h),
          child: Column(
            children: [
              Utils.popinMedText(
                'Agent Review',
                fontSize: 24.sp,
              ),
              20.spaceY,
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                  ),
                  itemCount: menuList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.toNamed(Routes.agentReviewDetailsRoute);
                      },
                      child: Card(
                        margin: EdgeInsets.zero,
                        child: Column(
                          children: [
                            Image.asset(
                              AppImages.kitchen,
                              fit: BoxFit.fill,
                            ),
                            Utils.popinMedText(
                              menuList[index],
                              fontSize: 20.sp,
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
