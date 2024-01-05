import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';

class NotificationBadge extends StatelessWidget {
  const NotificationBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        IconButton(
            iconSize: 30,
            color: AppColors.grey,
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_rounded,
            )),
        Positioned(
          top: 24,
          right: 12,
          child: Container(
              height: 12,
              width: 12,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: AppColors.red,
                shape: BoxShape.circle,
              ),
              // child: const Text(
              //   '2',
              //   style: TextStyle(color: AppColors.white),
              // )
              ),
        ),
      ],
    );
  }
}
