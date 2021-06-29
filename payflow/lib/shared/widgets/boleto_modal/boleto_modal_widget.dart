import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';

class BoletoModalWidget extends StatelessWidget {
  final String boletoName;
  final double boletoValue;

  const BoletoModalWidget(
      {Key? key, required this.boletoName, required this.boletoValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.bottomCenter,
      height: size.height * 0.36,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 78, right: 78, top: 34),
            child: Text.rich(
              TextSpan(
                text: "O boleto ",
                style: AppTextStyles.titleHeading,
                children: [
                  TextSpan(
                      text: "$boletoName\n",
                      style: AppTextStyles.titleBoldHeading,
                      children: [
                        TextSpan(
                            text: "no valor de R\$ ",
                            style: AppTextStyles.titleHeading,
                            children: [
                              TextSpan(
                                  text: "${boletoValue} ",
                                  style: AppTextStyles.titleBoldHeading,
                                  children: [
                                    TextSpan(
                                      text: "foi pago ?",
                                      style: AppTextStyles.titleHeading,
                                    )
                                  ])
                            ]),
                      ])
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 55,
                  width: 155,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.boxes),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Não", style: AppTextStyles.buttonSecondary),
                  ),
                ),
                Container(
                  height: 55,
                  width: 155,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.primary),
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Sim", style: AppTextStyles.buttonBackground),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            height: 1,
            color: AppColors.strokes,
          ),
          Container(
              height: 56,
              child: TextButton(
                onPressed: () {},
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(
                    Icons.delete_outline,
                    color: Colors.red,
                  ),
                  Text(
                    "Deletar boleto",
                    //Se o style for diferente de Null use
                    style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.red),
                  ),
                ]),
              ))
        ],
      ),
    );
  }
}
