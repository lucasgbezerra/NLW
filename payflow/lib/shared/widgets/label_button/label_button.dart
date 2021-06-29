import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class LabelButton extends StatelessWidget {
  const LabelButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.style,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String label;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: TextButton(
        
        onPressed: onPressed,
        child: Text(
        label,
        //Se o style for diferente de Null use
        style: style ?? AppTextStyles.buttonHeading,
          ),
      ),
    );
  }
}
