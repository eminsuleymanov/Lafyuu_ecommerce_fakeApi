import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/constants/app_colors.dart';

class GlobalInput extends StatefulWidget {
  const GlobalInput({
    super.key,
    required this.text,
    this.prefixIcon,
    this.isPassword = false,
    this.controller,
  });

  final String text;
  final IconData? prefixIcon;
  final bool isPassword;
  final TextEditingController? controller;

  @override
  State<GlobalInput> createState() => _GlobalInputState();
}

class _GlobalInputState extends State<GlobalInput> {
  bool show = true;

  void showAndHide() {
    show = !show;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: AppColors.primaryBlue,
      ),
      child: TextFormField(
        controller: widget.controller,
        obscureText: widget.isPassword ? show : false,
        validator: (v) {
          if (v == null || v.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
        style:
            const TextStyle(color: AppColors.grey, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          hintText: widget.text,
          hintStyle: const TextStyle(color: AppColors.grey),
          // errorText: ,
          errorStyle: const TextStyle(height: 0),
          prefixIcon: Icon(widget.prefixIcon),
          suffixIcon: widget.isPassword
              ? GestureDetector(
                  onTap: () => showAndHide(),
                  child: Icon(
                    !show ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash,
                    color: AppColors.grey,
                    size: 16,
                  ),
                )
              : null,

          //Prefix iconi svgden icondataya deyiwib icon qoymag

          // prefixIcon: Container(
          //     padding: const EdgeInsets.all(8),
          //     child: SvgPicture.asset(widget.preffixIcon!)),
        ),
      ),
    );
  }
}
