import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone_flutter/core/config/theme/app_colors.dart';
import 'package:spotify_clone_flutter/features/choose_mode/presentation/bloc/theme_cubit.dart';

import '../../../../common/widgets/button/basic_app_button.dart';
import '../../../../core/config/assets/app_image.dart';
import '../../../../core/config/assets/app_vectors.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.chooseModeBG),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Center(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 40,
                  horizontal: 40,
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(AppVectors.spotifyLogo),
                    Spacer(),
                    Text(
                      "Choose Mode",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                context.read<ThemeCubit>().updateTheme(
                                  ThemeMode.dark,
                                );
                              },
                              child: ClipOval(
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 10,
                                    sigmaY: 10,
                                  ),
                                  child: Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: const Color(
                                        0xff30393C,
                                      ).withAlpha(128),
                                      // image: DecorationImage(image: SvgPicture.asset(AppVectors.spotifyLogo))
                                    ),
                                    child: SvgPicture.asset(
                                      AppVectors.moon,
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 12),
                            Text(
                              "Dark Mode",
                              style: TextStyle(
                                color: AppColors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(width: 40),

                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                context.read<ThemeCubit>().updateTheme(
                                  ThemeMode.light,
                                );
                              },
                              child: ClipOval(
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 10,
                                    sigmaY: 10,
                                  ),
                                  child: Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: const Color(
                                        0xff30393C,
                                      ).withAlpha(128),
                                      // image: DecorationImage(image: SvgPicture.asset(AppVectors.spotifyLogo))
                                    ),
                                    child: SvgPicture.asset(
                                      AppVectors.sun,
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(height: 12),
                            Text(
                              "Light Mode",
                              style: TextStyle(
                                color: AppColors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 50),
                    BasicAppButton(
                      label: 'Continue',
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (BuildContext context) => ChooseModePage(),
                        //   ),
                        // );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
