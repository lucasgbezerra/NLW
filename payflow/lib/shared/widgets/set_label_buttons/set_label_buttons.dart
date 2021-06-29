import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/divider_vertical/divider_vertical_widget.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  const SetLabelButtons({
    Key? key,
    required this.primaryLabel,
    required this.primaryOnPressed,
    required this.secondaryLabel,
    required this.secondaryOnPressed,
    this.enablePrimaryColor = false,
    this.enableSecondaryColor = false,
  }) : super(key: key);

  final VoidCallback primaryOnPressed;
  final VoidCallback secondaryOnPressed;
  final String primaryLabel;
  final String secondaryLabel;
  final bool enablePrimaryColor;
  final bool enableSecondaryColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57,
      color: AppColors.background,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            thickness: 1,
            height: 1,
            color: AppColors.strokes,
          ),
          Container(
            height: 56,
            child: Row(
              children: [
                Expanded(
                    child: LabelButton(
                  label: primaryLabel,
                  onPressed: primaryOnPressed,
                  style:
                      enablePrimaryColor ? AppTextStyles.buttonPrimary : null,
                )),
                DividerVerticalWidget(),
                Expanded(
                    child: LabelButton(
                  label: secondaryLabel,
                  onPressed: secondaryOnPressed,
                  style:
                      enableSecondaryColor ? AppTextStyles.buttonPrimary : null,
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
