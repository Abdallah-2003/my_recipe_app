import 'package:flutter/material.dart';
import 'package:my_recipe/core/constant/app_colors.dart';
import 'package:my_recipe/core/constant/app_images.dart';
import 'package:my_recipe/core/constant/app_strings.dart';
import 'package:my_recipe/core/theme/text_styles.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final screenHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColors.primaryLight, AppColors.primaryDark],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Opacity(
                opacity: 0.1,
                child: Image.asset(
                  AppImages.topBorder,
                  width: screenWidth * 0.5,
                ),
              ),
            ),

            Positioned(
              bottom: screenHeight * 0.6,
              left: screenWidth * 0.7,
              child: Opacity(
                opacity: 0.1,
                child: Image.asset(
                  AppImages.centerBorder,
                  width: screenWidth * 0.3,
                ),
              ),
            ),

            Positioned(
              bottom: 0,
              right: 0,
              child: Opacity(
                opacity: 0.1,
                child: Image.asset(
                  AppImages.bottomBorder,
                  width: screenWidth * 0.85,
                ),
              ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(flex: 3),

                Image.asset(
                  AppImages.logo,
                  width: 100,
                  height: 100,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 24),
                Text(
                  AppStrings.recipeFinder,
                  style: AppTextStyles.styleBold32.copyWith(
                    color: AppColors.white,
                  ),
                ),
                Text(
                  AppStrings.cookWithPassion,
                  style: AppTextStyles.styleMedium14.copyWith(
                    color: AppColors.white,
                  ),
                ),

                const Spacer(flex: 2),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: Column(
                    children: [
                      LinearProgressIndicator(
                        value: 0.4,
                        backgroundColor: AppColors.white.withValues(alpha: 0.3),
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        AppStrings.loadingKitchen,
                        style: AppTextStyles.styleMedium12.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                ),

                const Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
