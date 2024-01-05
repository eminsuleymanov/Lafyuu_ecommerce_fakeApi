import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../cubits/products/home_cubit.dart';
import '../../../../data/models/product_hive/products_response.dart';
import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_sizedboxes.dart';
import '../../../../utils/constants/app_texts.dart';
import 'banner_widgets/announce_item.dart';
import 'banner_widgets/announces_carousel.dart';
import 'category_widgets/category_section.dart';
import 'sales/product_grid_view.dart';
import 'sales/product_sales.dart';

class HomeView extends StatelessWidget {

  const HomeView({ super.key });

   @override
   Widget build(BuildContext context) {
       return ListView(
        children: [
          Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const AnnouncesCarousel(),
                  AppSizedboxes.h16,
                  const CategorySection(),
                  AppSizedboxes.h16,
                  BlocBuilder<HomeCubit, HomeCubitState>(
                    builder: (context, state) {
                      if (state is HomeLoading) {
                        return const CircularProgressIndicator.adaptive();
                      } else if (state is HomeSuccess) {
                        final List<ProductsResponse> products = state.response;
                        return ProductSales(
                          heading: AppTexts.flashSale,
                          headingLink: AppTexts.seeMore,
                          onPressed: () {},
                          products: products,
                        );
                      }
                      return const Text("Error");
                    },
                  ),
                  AppSizedboxes.h16,
                  BlocBuilder<HomeCubit, HomeCubitState>(
                    builder: (context, state) {
                      if (state is HomeLoading) {
                        return const CircularProgressIndicator.adaptive();
                      } else if (state is HomeSuccess) {
                        final List<ProductsResponse> products = state.response;
                        return ProductSales(
                          heading: AppTexts.megaSale,
                          headingLink: AppTexts.seeMore,
                          onPressed: () {},
                          products: products,
                        );
                      }
                      return const Text("Error");
                    },
                  ),
                  AppSizedboxes.h16,
                  const AnnounceItem(
                      imageUrl: AppAssets.singleBanner,
                      title: "Recommended \nProduct"),
                  AppSizedboxes.h16,

                  Hive.box<List>('productResponseBox').isNotEmpty
                      ? ValueListenableBuilder(
                          valueListenable:
                              Hive.box<List>('productResponseBox').listenable(),
                          builder: (context, Box<List> box, _) {
                            if (box.isEmpty) return const Text("No data available");
                            final productList = box.get('products')!.cast<ProductsResponse>().toList();

                            print("Valuelistened");
                            return ProductGridView(
                              products: productList,
                            );
                          })
                      : BlocBuilder<HomeCubit, HomeCubitState>(
                          builder: (context, state) {
                            if (state is HomeLoading) {
                              return const CircularProgressIndicator.adaptive();
                            } else if (state is HomeSuccess) {
                              final List<ProductsResponse> products =
                                  state.response;
                              print("Cubitlistened");

                              return ProductGridView(
                                products: products,
                              );
                            }
                            return const Text("Error");
                          },
                        )
                ],
              ))
        ],
      );
  }
}