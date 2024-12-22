import 'package:flutter/material.dart';
import 'package:fruitsecommerce/core/utils/app_colors.dart';
import 'package:fruitsecommerce/core/utils/app_images.dart';
import 'package:fruitsecommerce/core/utils/app_text_styles.dart';
import 'package:fruitsecommerce/features/on_boarding/presentation/views/widget/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
            isVisible: true,
            image: Assets.imagesPageViewItem1Image,
            backgroundImage: Assets.imagesPageViewItem1BackgroundImage,
            subtitle:
                "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "مرحبًا بك في ",
                  style: TextStyles.bold23,
                ),
                Text(
                  "HUB",
                  style: TextStyles.bold23
                      .copyWith(color: AppColors.secondaryColor),
                ),
                Text(
                  "Fruit",
                  style:
                      TextStyles.bold23.copyWith(color: AppColors.primaryColor),
                ),
              ],
            )),
        const PageViewItem(
            isVisible: false,
            image: Assets.imagesPageViewItem2Image,
            backgroundImage: Assets.imagesPageViewItem2BackgroundImage,
            subtitle:
                "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية",
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "ابحث وتسوق ",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 23,
                    color: Colors.black,
                    fontFamily: 'Cairo',
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ))
      ],
    );
  }
}
