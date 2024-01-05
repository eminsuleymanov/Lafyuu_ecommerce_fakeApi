import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/utils/constants/app_colors.dart';
import 'package:lafyuu_e_commerce/utils/constants/app_sizedboxes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../data/models/announce_slider_model.dart';
import 'announce_item.dart';

class AnnouncesCarousel extends StatefulWidget {
  const AnnouncesCarousel({super.key});

  @override
  State<AnnouncesCarousel> createState() => _AnnouncesCarouselState();
}

class _AnnouncesCarouselState extends State<AnnouncesCarousel> {
  int currentIndex = 0;

  // late final PageController _carouselController;
  final _carouselController = CarouselController();
  // @override
  // void initState() {
  //   _carouselController = PageController(initialPage: currentIndex);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
            carouselController: _carouselController,
            itemCount: AnnounceSliderModel.items.length,
            itemBuilder: (context, index, realIndex) {
              final item = AnnounceSliderModel.items[index];
              return AnnounceItem(
                title: item.title,
                subtitle: item.subtitle,
                imageUrl: item.imageUrl,
              );
            },
            options: CarouselOptions(
              viewportFraction: 1,
              height: 206,
              onPageChanged: (index, reason) =>
                  setState(() => currentIndex = index),
            )),
        AppSizedboxes.h16,
        AnimatedSmoothIndicator(
          onDotClicked: ( currentIndex) =>
           _carouselController.animateToPage(currentIndex,),
          activeIndex: currentIndex,
          count: AnnounceSliderModel.items.length,
          effect: const SlideEffect(
              activeDotColor: AppColors.primaryBlue,
              dotHeight: 10,
              dotWidth: 10),
        )
      ],
    );
  }
}
