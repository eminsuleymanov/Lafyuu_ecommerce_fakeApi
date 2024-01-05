import 'package:lafyuu_e_commerce/utils/constants/app_assets.dart';

class AnnounceSliderModel {
  final String title;
  final String? subtitle;
  final String imageUrl;

  AnnounceSliderModel({
    required this.title,
    this.subtitle,
    required this.imageUrl,
  });

  static final List<AnnounceSliderModel> items = [
    AnnounceSliderModel(
        imageUrl: AppAssets.banner1,
        title: '',
        subtitle: ''),
    AnnounceSliderModel(
        imageUrl: AppAssets.banner1,
        title: '',
        subtitle: ''),
    AnnounceSliderModel(
        imageUrl: AppAssets.banner1,
        title: '',
        subtitle: ''),
  ];
}
