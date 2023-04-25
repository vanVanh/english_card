import 'package:englist_card/page/home_page.dart';
import 'package:englist_card/values/app_assets.dart';
import 'package:englist_card/values/app_colors.dart';
import 'package:flutter/material.dart';
import '../values/app_styles.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
                child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Welcome to',
                style: AppStyles.h3,
              ),
            )),
            Expanded(
                child: Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'English',
                      style: AppStyles.h2.copyWith(
                          color: AppColors.blackGrey,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Text(
                        'Qoutes"',
                        style: AppStyles.h4.copyWith(height: 0.5),
                        textAlign: TextAlign.right,
                      ),
                    )
                  ]),
            )),
            Expanded(
                child: Container(
              child: RawMaterialButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => HomePage()),
                      (route) => false);
                },
                shape: CircleBorder(),
                fillColor: AppColors.lighBlue,
                child: Image.asset(AppAssets.rightArrow),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
