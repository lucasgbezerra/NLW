import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:payflow/shared/models/boleto_model.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/boleto_modal/boleto_modal_widget.dart';

class BoletoTileWidget extends StatefulWidget {
  final BoletoModel data;
  const BoletoTileWidget({Key? key, required this.data,}) : super(key: key);

  @override
  _BoletoTileWidgetState createState() => _BoletoTileWidgetState();
}

class _BoletoTileWidgetState extends State<BoletoTileWidget> {
  @override
  Widget build(BuildContext context) {
    return AnimatedCard(
      direction: AnimatedCardDirection.right,
      child: ListTile(
        onTap: (){
          showModalBottomSheet(context: context, builder: (context){
            return BoletoModalWidget(boletoName: widget.data.name!, boletoValue: widget.data.value!,);
          });
        },
          contentPadding: EdgeInsets.zero,
          title: Text(
            widget.data.name!,
            style: AppTextStyles.titleListTile,
          ),
          subtitle: Text(
            "Vence em ${widget.data.dueDate!}",
            style: AppTextStyles.captionBody,
          ),
          trailing: Text.rich(TextSpan(
              style: AppTextStyles.trailingRegular,
              text: "R\$ ",
              children: [
                TextSpan(
                  text: "${widget.data.value!.toStringAsFixed(2)}",
                  style: AppTextStyles.trailingBold,
                )
              ]))),
    );
  }
}
