import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/utils/constants/app_colors.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: Colors.white,
      height: 60,
      destinations: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(),
          child: const Column(
            children: [
              Icon(Icons.home_outlined,color: AppColors.grey,),
              Text("Home",style: TextStyle(color: AppColors.grey),)
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(),
          child: const Column(
            children: [
              Icon(Icons.search_outlined),
              Text("Search",style: TextStyle(),)
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(),
          child: const Column(
            children: [
              Icon(Icons.shopping_basket_outlined),
              Text("Cart",style: TextStyle(),)
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(),
          child: const Column(
            children: [
              Icon(Icons.person_outline_rounded),
              Text("Account",style: TextStyle(),)
            ],
          ),
        ),
      ],

      // backgroundColor: AppColors.white,
      // elevation: 1,
      // height: 60,
      // selectedIndex: 0,
      // destinations: const [
      //   NavigationDestination(icon: Icon(Icons.home_outlined), label: "Home"),
      //   NavigationDestination(
      //       icon: Icon(Icons.search_outlined), label: "Search"),
      //   NavigationDestination(
      //       icon: Icon(Icons.shopping_basket_outlined), label: "Cart"),
      //   NavigationDestination(
      //       icon: Icon(FontAwesomeIcons.person), label: "Account"),
      // ],
    );
  }
}
