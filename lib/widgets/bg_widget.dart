import 'package:flutter/material.dart';
import 'package:zumda/app/app_images.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget child;
  final double opacity;

  const BackgroundWidget({super.key, required this.child, this.opacity = 0.6});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage(
              AppImages.BG), // Replace with your actual image path
          fit: BoxFit.cover,
          opacity: opacity,
        ),
      ),
      child: child,
    );
  }
}
