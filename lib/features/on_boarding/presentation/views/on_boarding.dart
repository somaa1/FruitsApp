import 'package:flutter/material.dart';
import 'package:fruitsecommerce/features/on_boarding/presentation/views/widget/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  static const String routeName = 'OnBoardingView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  SafeArea(child: OnBoardingViewBody()),
    );
  }
}
