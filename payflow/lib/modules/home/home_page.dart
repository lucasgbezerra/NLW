import 'package:flutter/material.dart';
import 'package:payflow/modules/home/home_controller.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Controler da página
  final controller = HomeController();
  //Gerenciar páginas
  final pages = [
    Container(color: Colors.red,),
    Container(color: Colors.blue,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar de tamanho diferente
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(152),
        child: Container(
            height: 152,
            color: AppColors.primary,
            child: Center(
              child: ListTile(
                title: Text.rich(TextSpan(
                    text: "Olá, ",
                    style: AppTextStyles.titleRegular,
                    children: [
                      TextSpan(
                        text: "user",
                        style: AppTextStyles.titleBoldBackground,
                      )
                    ])),
                subtitle: Text(
                  "Mantenha suas contas em dia",
                  style: AppTextStyles.captionBoxes,
                ),
                trailing: Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
            )),
      ),
      body: pages[controller.currentPage],
      bottomNavigationBar: Container(
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                controller.setPage(0);
                setState(() {});
              },
              icon: Icon(Icons.home),
              color: AppColors.primary,
            ),
            GestureDetector(
              onTap: (){
                print("clicou");
              },
              child: Container(
                  height: 56,
                  width: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.primary),
                  child: Icon(
                    Icons.add_box_outlined,
                    color: AppColors.background,
                  )),
            ),
            IconButton(
              onPressed: () {
                controller.setPage(1);
                setState(() {});

              },
              icon: Icon(Icons.description_outlined),
              color: AppColors.body,
            )
          ],
        ),
      ),
      
    );
  }
}
