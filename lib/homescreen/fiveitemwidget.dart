import 'package:flutter/material.dart';
import 'package:recipe_app/appexports.dart';

class FiveItemWidget extends StatelessWidget {
  const FiveItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          10,
          (index) => _buildTrendingItem("Trending ${index + 1}"),
        ),
      ),
    );
  }

  Widget _buildTrendingItem(String label) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 26,
          vertical: 7,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          label,
          style: TextStyle(
            color: appTheme.deepOrange300,
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: appTheme.deepOrange300,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: appTheme.deepOrange300,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        onSelected: (value) {},
      ),
    );
  }
}
