import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../app/index.dart';

class MenuDetailView extends StatelessWidget {
  const MenuDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    List<IconData> icons = [
      FontAwesomeIcons.tiktok,
      FontAwesomeIcons.facebook,
      FontAwesomeIcons.instagram,
      FontAwesomeIcons.globe,
      Icons.location_on,
      Icons.share,
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: ColorManager.primary,
        title: Utils.popinSemBoldText(
          'Kitchen',
          fontSize: 18.sp,
          color: ColorManager.white,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200.h,
              width: 1.sw,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    AppImages.kitchen,
                  ),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 1.sw,
                      color: ColorManager.black.withOpacity(0.1),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Utils.popinMedText(
                            'Kitchen Name',
                            fontSize: 18.sp,
                            color: ColorManager.white,
                          ),
                          20.spaceY,
                          Utils.popinMedText(
                            'Kitchen Address',
                            fontSize: 18.sp,
                            color: ColorManager.white,
                          ),
                          20.spaceY,
                          Utils.popinMedText(
                            'Menu Name',
                            fontSize: 18.sp,
                            color: ColorManager.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            10.spaceY,
            SizedBox(
              // height: 60.h,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    AppImages.logo,
                    // height: 40.h,
                    width: 60.w,
                    fit: BoxFit.fill,
                  ),
                  20.spaceX,
                  SizedBox(
                    width: 220.w,
                    child: Utils.popinBoldText(
                      'Popcorn Ayam Kicap Sambal Gesek is currently ranked in the 3rd most popular meal on Pop meals',
                      maxLines: 5,
                      textOverflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    child: Icon(
                      Icons.favorite_rounded,
                      color: ColorManager.darkGrey,
                    ),
                  ),
                ],
              ),
            ),
            10.spaceY,
            Utils.popinMedText(
              'Weight 150 gram\nPackaging size 100 x200',
              letterSpacing: 2,
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                Utils.popinBoldText('Recent Reviews'),
                const Spacer(),
                InkWell(
                  child: Utils.popinBoldText(
                    'View all',
                    color: ColorManager.black.withOpacity(0.5),
                  ),
                ),
              ],
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              visualDensity: VisualDensity.compact,
              leading: CircleAvatar(
                radius: 20.r,
                backgroundColor: ColorManager.grey,
                child: Padding(
                  padding: EdgeInsets.all(10.r),
                  child: Image.asset(AppImages.logo),
                ),
              ),
              title: Utils.popinBoldText('Adam H.'),
              subtitle: Utils.popinMedText('"Negam"'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  6,
                  (index) => InkWell(
                        onTap: () {
                          index == 0 ? print('Tiktok') : print('fb');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: ColorManager.black),
                              borderRadius: BorderRadius.circular(10.r)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.w,
                              vertical: 8.h,
                            ),
                            child: Icon(
                              icons[index],
                              size: 20.sp,
                            ),
                          ),
                        ),
                      )),
            ),
            10.spaceY,
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      //  Get.toNamed(Routes.placeOrderRoute);
                    },
                    child: Utils.popinBoldText(
                      'Chat',
                      fontSize: 12.sp,
                    ),
                  ),
                ),
                10.spaceX,
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      Get.toNamed(Routes.addToCartRoute);
                    },
                    child: Utils.popinBoldText(
                      'Add to cart',
                      fontSize: 12.sp,
                    ),
                  ),
                ),
                10.spaceX,
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: ColorManager.primary,
                    ),
                    onPressed: () {
                      Get.toNamed(Routes.placeOrderRoute);
                    },
                    child: Utils.popinBoldText(
                      'Order Now',
                      fontSize: 12.sp,
                      color: ColorManager.white,
                    ),
                  ),
                ),
              ],
            ),
            Utils.popinBoldText(
              'For you',
              fontSize: 16.sp,
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 9,
                reverse: true,
                shrinkWrap: true,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.all(8.0.r),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 80.h,
                        height: 80.h,
                        color: ColorManager.orange,
                        child: Image.asset(
                          AppImages.kitchen,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Utils.popinRegText(index.toString()),
                      Utils.popinRegText('25.0 \$')
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
