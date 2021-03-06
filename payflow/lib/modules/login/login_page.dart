import 'package:flutter/material.dart';
import 'package:payflow/modules/login/login_controller.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_image.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/social_login/social_login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //Inicializando controller de login
  final controller = LoginController();

  @override
  Widget build(BuildContext context) {
    // Tamanho da tela
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColors.background,
        body: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Container(
                width: size.width,
                height: size.height * 0.4,
                color: AppColors.primary,
              ),
              Positioned(
                child: Image.asset(AppImages.person,
                    width: size.width * 0.55, height: size.height * 0.46),
                top: size.height * 0.08,
                left: 0,
                right: 0,
              ),
              Positioned(
                top: size.height * 0.57,
                left: 0,
                right: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.logoMini,
                      height: size.height * 0.05,
                      width: 0.2 * size.width,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 70, right: 70, top: size.height *0.03),
                      child: Text(
                        "Organize seus boletos em um s?? lugar",
                        style: AppTextStyles.titleHome,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40, right: 40, top: size.height *0.05),
                      child: SocialLoginButton(
                        onTap: () {
                          controller.googleSignIn(context);
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
