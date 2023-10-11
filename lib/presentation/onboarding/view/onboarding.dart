import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_learning/domain/model/model.dart';
import 'package:online_learning/presentation/onboarding/view_model/onboarding_view_model.dart';
import 'package:online_learning/presentation/resources/color_manager.dart';
import 'package:online_learning/presentation/resources/values_manager.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../resources/routes_manager.dart';
import '../../resources/strings_manager.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  var onBoardingController = PageController();

  OnBoardingViewModel onBoardingViewModel = OnBoardingViewModel();

  _bind() {
    onBoardingViewModel.start();
  }

  @override
  void initState() {
    super.initState();
    _bind();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              !onBoardingViewModel.isIndexInTheEnd(onBoardingViewModel.currentIndex)? Padding(
                padding: const EdgeInsets.only(
                    right: AppPadding.p28, top: AppPadding.p28),
                child: Text(
                  StringManager.skip,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ):const SizedBox(),
              Expanded(
                child: PageView.builder(
                  onPageChanged: (index) {
                    setState(() {
                      onBoardingViewModel.currentIndex=index;
                    });
                  },
                  itemBuilder: (context, index) =>
                      _getOnBoardingContent(onBoardingViewModel.list[index]),
                  itemCount: onBoardingViewModel.list.length,
                  controller: onBoardingController,
                  physics: const BouncingScrollPhysics(),
                ),
              ),
            ],
          ),
        ));
  }

  Widget _getOnBoardingContent(SliderObject sliderObject) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildImage(sliderObject.image),
          SizedBox(
            height: AppSize.s12.h,
          ),
          _buildTitle(sliderObject.title),
          SizedBox(
            height: AppSize.s12.h,
          ),
          _buildSubtitle(sliderObject.subTitle),
          SizedBox(
            height: AppSize.s40.h,
          ),
          _buildIndicator(),
          onBoardingViewModel.isIndexInTheEnd(onBoardingViewModel.currentIndex)? SizedBox(
            height: AppSize.s40.h,
          ):const SizedBox(),
          onBoardingViewModel.isIndexInTheEnd(onBoardingViewModel.currentIndex)?_buildLoginButton():const SizedBox()
        ],
      ),
    );
  }

  Widget _buildImage(String image) {
    return SvgPicture.asset(image);
  }

  Widget _buildTitle(String title) {
    return Padding(
      padding:
          const EdgeInsets.only(left: AppPadding.p20, right: AppPadding.p20),
      child: Center(
          child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .displayLarge!
            .copyWith(color: ColorManager.black),
      )),
    );
  }

  Widget _buildSubtitle(String subtitle) {
    return Padding(
      padding:
          const EdgeInsets.only(left: AppPadding.p40, right: AppPadding.p40),
      child: Text(
        subtitle,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }

  Widget _buildIndicator() {
    return SmoothPageIndicator(
        count: onBoardingViewModel.list.length,
        controller: onBoardingController,
        effect: ExpandingDotsEffect(
          dotColor: ColorManager.lightGray,
          activeDotColor: ColorManager.activeDot,
          dotHeight: 5.h,
          expansionFactor: 4,
          dotWidth: 10,
          spacing: 5.0,
        ));
  }

  Widget _buildLoginButton(){
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        SizedBox(
          height: AppSize.s50.h,
          width:   AppSize.s100.w,
          child: ElevatedButton(onPressed: (){

          }, child: const Text(StringManager.register),),
        ),
          const Spacer(),
        SizedBox(
          height: AppSize.s50.h,
          width:  AppSize.s100.w,
          child: ElevatedButton(onPressed: (){
            Navigator.pushReplacementNamed(context, Routes.loginRoute);
          },
              child: const Text(StringManager.login)),
        )
        ],
      ),
    );
  }

}
