import 'package:flutter/material.dart';
import 'package:weather/themes/app_colors.dart';

class ErrorDisplay extends StatelessWidget {
  const ErrorDisplay({
    super.key,
    required this.errorMessage,
    this.retryCallBack,
    this.errorColor,
  });

  final String errorMessage;
  final Color? errorColor;
  final Function? retryCallBack;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Error: $errorMessage', style: TextStyle(color: errorColor?? AppColors.white),),
          retryCallBack != null? ElevatedButton(
            onPressed: () => retryCallBack!(),
            child: const Text('Retry'),
          ):SizedBox(),
        ],
      ),
    );
  }
}