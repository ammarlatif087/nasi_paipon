import 'package:nasi_paipon/app/index.dart';

class UserReviewView extends StatelessWidget {
  const UserReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(18.h),
          child: Column(
            children: [
              Utils.popinMedText(
                'User Review',
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
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.toNamed(Routes.userReviewDetailsRoute);
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
                              'Biryani',
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
