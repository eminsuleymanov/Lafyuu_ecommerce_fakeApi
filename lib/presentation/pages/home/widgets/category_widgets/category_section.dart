import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu_e_commerce/cubits/products/home_cubit.dart';
import 'package:lafyuu_e_commerce/data/models/category_model.dart';
import 'package:lafyuu_e_commerce/presentation/pages/home/widgets/category_widgets/category_item.dart';
import 'package:lafyuu_e_commerce/presentation/widgets/section_headings.dart';
import 'package:lafyuu_e_commerce/utils/constants/app_sizedboxes.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeCubit cubit = context.read<HomeCubit>();

    return Column(
      children: [
        SectionHeadings(
          heading: 'Category',
          showActionButton: true,
          headingLink: 'More Category',
          onPressed: () {},
        ),
        AppSizedboxes.h4,
        SizedBox(
          height: 110,
          child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                final item = CategoryModel.items[index];
                final category = cubit.categories![index];
                return CategoryItem(
                  icon: item.icon,
                  categoryName: category.name,
                );
              },
              separatorBuilder: (context, index) => AppSizedboxes.w12,
              itemCount: cubit.categories!.length),
        )
      ],
    );
  }
}
