import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'get_size.dart';

class CustomTtileWIdget extends StatelessWidget {
  const CustomTtileWIdget({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: getSize(context) / 44),
      height: getSize(context) / 6,
      child: Row(
        children: [
          Container(
            height: getSize(context) / 9,
            width: 10,
            decoration: BoxDecoration(
                color: AppColors.yellow2Color,
                borderRadius:
                    EasyLocalization.of(context)!.locale.languageCode == 'ar'
                        ? BorderRadius.only(
                            topLeft: Radius.circular(getSize(context) / 22),
                            bottomLeft: Radius.circular(getSize(context) / 22),
                          )
                        : BorderRadius.only(
                            topRight: Radius.circular(getSize(context) / 22),
                            bottomRight: Radius.circular(getSize(context) / 22),
                          )),
          ),
          Container(
            padding: EdgeInsets.all(getSize(context) / 44),
            margin: EdgeInsets.only(
              right: getSize(context) / 44,
              bottom: getSize(context) / 44,
              top: getSize(context) / 44,
            ),
            child: Text(
              title,
              style: TextStyle(
                fontFamily: 'tahoma',
                fontWeight: FontWeight.bold,
                fontSize: getSize(context) / 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
