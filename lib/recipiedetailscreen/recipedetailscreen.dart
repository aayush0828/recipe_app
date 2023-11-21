import 'package:flutter/material.dart';
import 'package:recipe_app/appexports.dart';
import 'package:recipe_app/recipiedetailscreen/recipeingrident.dart';
import 'package:recipe_app/recipiedetailscreen/recipeprocedurewidget.dart';
import 'package:recipe_app/widgets/appbarleadingimage.dart';
import 'package:recipe_app/widgets/appbartrailingimage.dart';
import 'package:recipe_app/widgets/customappbar.dart';

import 'package:recipe_app/widgets/customiconbutton.dart';

class RecipeDetailScreen extends StatelessWidget {
  const RecipeDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 10.v),
              _buildImage(context),
              SizedBox(height: 9.v),
              _buildEighteen(context),
              SizedBox(height: 8.v),
              
              
              _buildSeventeen(context),
              SizedBox(height: 22.v),
              Expanded(
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      Container(
                        constraints: BoxConstraints.expand(height: 50.v),
                        child: TabBar(
  tabs: [
    Tab(
      child: Text(
        'Procedure',
        style: CustomTextStyles.labelMediumBluegray40001.copyWith(
          color: Colors.black,
          fontSize: 15.0, // Adjust the size as needed
        ),
      ),
    ),
    Tab(
      child: Text(
        'Ingredient',
        style: CustomTextStyles.labelMediumBluegray40001.copyWith(
          color: Colors.black,
          fontSize: 15.0, // Adjust the size as needed
        ),
      ),
    ),
  ],
),
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            _buildRecipeProcedure(context),
                            _buildRecipeIngrident(context),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 50.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(left: 30.h, top: 2.v, bottom: 2.v),
        onTap: () {
          onTapArrowLeft(context);
        },
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgVuesaxLinearMore,
          margin: EdgeInsets.symmetric(horizontal: 30.h),
        ),
      ],
    );
  }

  Widget _buildImage(BuildContext context) {
    return SizedBox(
      height: 150.v,
      width: 315.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            color: Colors.black, // Replace with your desired color
            height: 150.v,
            width: 315.h,
            child: const Center(child: Text("Replace with your content")),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 150.v,
              width: 315.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    color: Colors.black, // Replace with your desired color
                    height: 150.v,
                    width: 315.h,
                    child: const Center(child: Text("Replace with your content")),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 10.v),
                      decoration: AppDecoration.gradientBlackToBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          
                          SizedBox(height: 90.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 17.adaptSize,
                                width: 17.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 3.v),
                                color: Colors.black, // Replace with your desired color
                              ),
                              
                              Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: CustomIconButton(
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  padding: EdgeInsets.all(4.h),
                                  child: Container(
                                    color: Colors.black, // Replace with your desired color
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEighteen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 183.h,
            child: Text(
              "Spicy chicken burger with French fries",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleSmallBlack900,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 28.h, bottom: 21.v),
            child: Text("(13k Reviews)", style: theme.textTheme.bodyMedium),
          ),
        ],
      ),
    );
  }

  

 

  Widget _buildSeventeen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgIcon,
            height: 17.adaptSize,
            width: 17.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Text("1 serve", style: theme.textTheme.bodySmall),
          ),
          Spacer(),
          Text("10 Steps", style: theme.textTheme.bodySmall),
        ],
      ),
    );
  }

  Widget _buildRecipeProcedure(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        separatorBuilder: (context, index) {
          return SizedBox(height: 10.v);
        },
        itemCount: 10,
        itemBuilder: (context, index) {
          return RecipeprocedureItemWidget();
        },
      ),
    );
  }

  Widget _buildRecipeIngrident(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        separatorBuilder: (context, index) {
          return SizedBox(height: 10.v);
        },
        itemCount: 14,
        itemBuilder: (context, index) {
          return RecipeingridentItemWidget();
        },
      ),
    );
  }

  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
