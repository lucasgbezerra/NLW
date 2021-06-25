import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/set_label_buttons/set_label_buttons.dart';

// Bottom Sheet, aparece em caso de erro ou dificuldade de ler o barcode
class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({
    Key? key,
    required this.primaryLabel,
    required this.primaryOnPressed,
    required this.secondaryLabel,
    required this.secondaryOnPressed,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final VoidCallback primaryOnPressed;
  final VoidCallback secondaryOnPressed;
  final String primaryLabel;
  final String secondaryLabel;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RotatedBox( //Rendereizar em landscape
        quarterTurns: 1,
        child: Material(
          child: Container(
            color: AppColors.boxes,
            child: Column(children: [
              Expanded(
                  child: Container(
                color: Colors.black.withOpacity(0.6),
              )),
              Padding(
                padding: EdgeInsets.all(40),
                child: Text.rich(
                  TextSpan(text: title, style: AppTextStyles.buttonBold, children: [
                    TextSpan(
                      text: "\n$subtitle",
                      style: AppTextStyles.buttonHeading,
                    )
                  ]),
                  textAlign: TextAlign.center,
                ),
              ),
              Container( //Divider horizontalf
                height: 1,
                color: AppColors.strokes,
              ),
              SetLabelButtons(
                  enablePrimaryColor: true,
                  primaryLabel: primaryLabel,
                  primaryOnPressed: primaryOnPressed,
                  secondaryLabel: secondaryLabel,
                  secondaryOnPressed: secondaryOnPressed)
            ]),
          ),
        ),
      ),
    );
  }
}
