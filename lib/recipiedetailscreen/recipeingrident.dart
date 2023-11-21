import 'package:flutter/material.dart';
import 'package:recipe_app/appexports.dart';

// ignore: must_be_immutable
class RecipeingridentItemWidget extends StatelessWidget {
  const RecipeingridentItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 52.adaptSize,
            width: 52.adaptSize,
            padding: EdgeInsets.all(6.h),
            decoration: BoxDecoration(
              color: Colors.black, // Replace with your desired color
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: const Center(
              child: Text(
                "Replace with your content",
                style: TextStyle(color: Colors.white), // Customize text color
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 17.v,
              bottom: 10.v,
            ),
            child: Text(
              "Tomatos",
              style: theme.textTheme.titleMedium,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 17.v,
              bottom: 13.v,
            ),
            child: Text(
              "500g",
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
