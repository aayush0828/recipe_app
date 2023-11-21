import 'package:recipe_app/recipiedetailscreen/recipeprocedurewidget.dart';
import 'package:recipe_app/widgets/appbarleadingimage.dart';
import 'package:recipe_app/widgets/appbartrailingimage.dart';
import 'package:recipe_app/widgets/customappbar.dart';
import 'package:recipe_app/widgets/customelevatedbutton.dart';
import 'package:recipe_app/widgets/customiconbutton.dart';

import '../appexports.dart';

import 'package:flutter/material.dart';

class RecipeProcedureScreen extends StatelessWidget {
  const RecipeProcedureScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 10.v),
                  _buildImage(context),
                  SizedBox(height: 9.v),
                  _buildEighteen(context),
                  SizedBox(height: 8.v),
                  _buildCreatorSProfile(context),
                  SizedBox(height: 7.v),
                  _buildComponentThree(context),
                  SizedBox(height: 25.v),
                  _buildSeventeen(context),
                  SizedBox(height: 22.v),
                  _buildRecipeProcedure(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 50.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 30.h, top: 2.v, bottom: 2.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgVuesaxLinearMore,
              margin: EdgeInsets.symmetric(horizontal: 30.h))
        ]);
  }

  /// Section Widget
  Widget _buildImage(BuildContext context) {
    return SizedBox(
        height: 150.v,
        width: 315.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle647,
              height: 150.v,
              width: 315.h,
              radius: BorderRadius.circular(10.h),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 150.v,
                  width: 315.h,
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle648,
                        height: 150.v,
                        width: 315.h,
                        radius: BorderRadius.circular(10.h),
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 7.h, vertical: 10.v),
                            decoration: AppDecoration.gradientBlackToBlack
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  CustomElevatedButton(
                                      width: 37.h,
                                      text: "4.0",
                                      margin: EdgeInsets.only(right: 3.h),
                                      leftIcon: Container(
                                          margin: EdgeInsets.only(right: 3.h),
                                          child: CustomImageView(
                                              imagePath: ImageConstant.imgStar,
                                              height: 8.adaptSize,
                                              width: 8.adaptSize)),
                                      buttonStyle:
                                          CustomButtonStyles.fillOrange,
                                      buttonTextStyle:
                                          CustomTextStyles.bodySmallBlack900),
                                  SizedBox(height: 25.v),
                                  CustomIconButton(
                                      height: 48.adaptSize,
                                      width: 48.adaptSize,
                                      padding: EdgeInsets.all(16.h),
                                      decoration:
                                          IconButtonStyleHelper.fillBlueGray,
                                      alignment: Alignment.center,
                                      child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgArrowRight)),
                                  SizedBox(height: 17.v),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgVuesaxOutlineTimer,
                                            height: 17.adaptSize,
                                            width: 17.adaptSize,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 3.v)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 5.h,
                                                top: 2.v,
                                                bottom: 3.v),
                                            child: Text("20 min",
                                                style: CustomTextStyles
                                                    .bodySmallBluegray100)),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 10.h),
                                            child: CustomIconButton(
                                                height: 24.adaptSize,
                                                width: 24.adaptSize,
                                                padding: EdgeInsets.all(4.h),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgBookmark)))
                                      ])
                                ])))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildEighteen(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: 183.h,
                  child: Text("Spicy chicken burger with French fries",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleSmallBlack900)),
              Padding(
                  padding: EdgeInsets.only(left: 28.h, bottom: 21.v),
                  child:
                      Text("(13k Reviews)", style: theme.textTheme.bodyMedium))
            ]));
  }

  /// Section Widget
  Widget _buildCreatorSProfile(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgUnsplashIj24uq1smwm,
              height: 40.adaptSize,
              width: 40.adaptSize,
              radius: BorderRadius.circular(20.h)),
          Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Laura wilson",
                        style: CustomTextStyles.titleSmallGray900),
                    SizedBox(height: 2.v),
                    Row(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgLocation,
                          height: 17.adaptSize,
                          width: 17.adaptSize),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("Lagos, Nigeria",
                              style: theme.textTheme.bodySmall))
                    ])
                  ])),
          Spacer(),
          CustomElevatedButton(
              height: 37.v,
              width: 85.h,
              text: "Follow",
              margin: EdgeInsets.symmetric(vertical: 2.v))
        ]));
  }

  /// Section Widget
  Widget _buildComponentThree(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 12.v),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 7.v, bottom: 9.v),
                  child: Text("Procedure",
                      style: CustomTextStyles.labelMediumBluegray40001)),
              CustomElevatedButton(
                  height: 33.v, width: 150.h, text: "Ingrident")
            ]));
  }

  /// Section Widget
  Widget _buildSeventeen(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgIcon,
              height: 17.adaptSize,
              width: 17.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: Text("1 serve", style: theme.textTheme.bodySmall)),
          Spacer(),
          Text("10 Steps", style: theme.textTheme.bodySmall)
        ]));
  }

  /// Section Widget
  Widget _buildRecipeProcedure(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.h),
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 10.v);
                },
                itemCount: 10,
                itemBuilder: (context, index) {
                  return RecipeprocedureItemWidget();
                })));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
