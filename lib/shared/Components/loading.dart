import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import '../Resources/colors.dart';

Widget loading() => Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LoadingAnimationWidget.bouncingBall(
            color: AppColors.colorPrimary, size: 60),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'No Result',
          style: TextStyle(fontSize: 20),
        )
      ],
    ));
