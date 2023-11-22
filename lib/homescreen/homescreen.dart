import 'package:flutter/material.dart';
import 'package:recipe_app/appexports.dart';
import 'package:recipe_app/homescreen/fiveitemwidget.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 428,
          child: Column(
            children: [
              SizedBox(height: 34),
              Expanded(
                child: SingleChildScrollView(
                  child: _buildHome(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHome(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 24), // Use symmetric padding
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 5),
          child: Text(
            "Let’s Cooking",
            style: theme.textTheme.headlineSmall,
          ),
        ),
        SizedBox(height: 19),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 13,
          ),
          decoration: AppDecoration.outlineBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder23,
          ),
          child: Text(
            "Search recipe",
            style: CustomTextStyles.titleSmallRobotoBluegray400,
          ),
        ),
        SizedBox(height: 11),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Category",
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  CustomImageView(
                    height: 31,
                    width: 24,
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 10),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 6,
                bottom: 4,
              ),
              child: Text(
                "View all",
                style: CustomTextStyles.titleSmallBluegray700,
              ),
            ),
          ],
        ),
        SizedBox(height: 7),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List<Widget>.generate(
              3,
              (index) => FiveItemWidget(),
            ),
          ),
        ),
      ],
    ),
  );
}}