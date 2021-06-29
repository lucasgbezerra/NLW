import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_image.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class BoletoInforWidget extends StatelessWidget {
  final int size;
  const BoletoInforWidget({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              AppImages.logoMini,
              color: AppColors.background,
              height: 34,
              width: 56,

            ),
            Container(
              height: 32,
              width: 1,
              color: AppColors.background.withOpacity(0.32),
            ),
            Text.rich(
              TextSpan(
                  text: "Você tem ",
                  style: AppTextStyles.captionBackground,
                  children: [
                    TextSpan(
                        text: "$size boletos ",
                        style: AppTextStyles.captionBoldBackground,
                        children: [
                          TextSpan(
                            text: "\ncadastrados para pagar",
                            style: AppTextStyles.captionBackground,
                          )
                        ])
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
