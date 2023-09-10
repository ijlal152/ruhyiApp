import 'package:flutter/material.dart';
import 'package:ruhiyapp/utils/app_colors.dart';

class LoadingOverlay extends StatelessWidget {
  final Widget child;
  final bool isLoading;
  final Color? bgColor;

  const LoadingOverlay({
    Key? key,
    required this.isLoading,
    required this.child,
    this.bgColor,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        child,
        if (isLoading)
          Expanded(
            child: Container(
                color: bgColor ?? AppColors.white50,
                alignment: Alignment.center,
                child: const CircularProgressIndicator(color: Colors.amber,)),
          ),
      ],
    );
  }
}
