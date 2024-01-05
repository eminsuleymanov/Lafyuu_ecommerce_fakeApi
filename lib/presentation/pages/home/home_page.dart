import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu_e_commerce/presentation/widgets/global_loading.dart';

import '../../../cubits/products/home_cubit.dart';
import '../../../navigation_menu.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_texts.dart';
import '../../widgets/global_input.dart';
import 'widgets/home_view.dart';
import 'widgets/notification_badge.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: .5,
        backgroundColor: Colors.white,
        title: const GlobalInput(
          text: AppTexts.search,
          prefixIcon: Icons.search_outlined,
        ),
        actions: [
          IconButton(
            iconSize: 30,
            color: AppColors.grey,
            onPressed: () {},
            icon: const Icon(Icons.favorite_outline_rounded),
          ),
          const NotificationBadge(),
        ],
      ),
      body: BlocBuilder<HomeCubit, HomeCubitState>(
        builder: (context, state) {
          if (state is HomeLoading || state is HomeCubitInitial) {
            return const GlobalLoading();
          }
          else if(state is HomeSuccess){
            return const HomeView();
          }
          return const SizedBox.shrink();
        },
      ),
      bottomNavigationBar: const NavigationMenu(),
    );
  }
}
