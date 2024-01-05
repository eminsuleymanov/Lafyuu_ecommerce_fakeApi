import 'package:flutter/material.dart';


import 'banner_texts.dart';

class AnnounceItem extends StatelessWidget {
  const AnnounceItem(
      {super.key,
      required this.imageUrl,
      required this.title,
       this.subtitle,
      });

  final String imageUrl;
  final String title;
  final String? subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top:45,left: 20),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      alignment: Alignment.centerLeft,
      height: 206,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
          // color: Colors.amber,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(imageUrl),
            fit: BoxFit.cover,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          BannerTexts(text: title),
          BannerTexts(text:subtitle ?? ''),
        ],
      ),
    );
  }
}
