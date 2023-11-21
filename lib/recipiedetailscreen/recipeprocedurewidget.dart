import 'package:flutter/material.dart';
import 'package:recipe_app/appexports.dart';

class RecipeprocedureItemWidget extends StatelessWidget {
  const RecipeprocedureItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Step 1",
            style: theme.textTheme.labelMedium?.copyWith(
              fontSize: 18.0, // Adjust the size as needed
            ),
          ),
          SizedBox(height: 8.v),
          SizedBox(
            width: 320.h,
            child: Text(
              "Lorem Ipsum tempor incididunt ut labore et dolore,in voluptate velit esse cillum dolore eu fugiat nulla pariatur?",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
