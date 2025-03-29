import 'package:flutter/material.dart';
import 'package:jabalprog/core/app_colors.dart';
import 'package:jabalprog/core/text_styles.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
        ),
        child: TextFormField(
          autofocus: false,
          decoration: InputDecoration(
            hintText: 'Search',
            contentPadding: const EdgeInsets.all(0),
            hintStyle: TextStyles.ubuntuLight(
                fontSize: 12, color: AppColors.greyColor),
            prefixIcon: const Icon(
              Icons.search,
              size: 18,
            ),
            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey.shade100, width: 1),
            ),
          ),
        ),
      ),
    );
  }
}
