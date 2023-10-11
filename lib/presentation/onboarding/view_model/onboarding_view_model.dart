import 'package:flutter/material.dart';
import 'package:online_learning/presentation/base/base_view_model.dart';

import '../../../domain/model/model.dart';
import '../../resources/image_manager.dart';
import '../../resources/strings_manager.dart';

class OnBoardingViewModel extends BaseViewModel implements OnBoardingViewModelOutput,OnBoardingViewModelInput{

  late final List<SliderObject> list;

  int currentIndex = 0;

  @override
  void start() {
    list=_getSliderData();
  }


  List<SliderObject> _getSliderData()=>[
    const SliderObject(StringManager.onBoardingTitle1, StringManager.onBoardingSubTitle1, ImageManager.onBoarding1),
    const SliderObject(StringManager.onBoardingTitle2, StringManager.onBoardingSubTitle2, ImageManager.onBoarding2),
    const SliderObject(StringManager.onBoardingTitle3, StringManager.onBoardingSubTitle3, ImageManager.onBoarding3)
  ];

  @override
  bool isIndexInTheEnd(int index) {
    if (index == list.length-1) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void onPageChange(int index) {
    currentIndex=index;
  }




}

abstract class OnBoardingViewModelInput{

  void onPageChange(int index);

  bool isIndexInTheEnd(int index);
}


abstract class OnBoardingViewModelOutput{}